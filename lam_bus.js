const { spawn } = require('child_process');
const EventEmitter = require('events');
const fs = require('fs');
const path = require('path');

// 1. Инициализация локальной шины Pub/Sub
class LocalBus extends EventEmitter {}
const coreBus = new LocalBus();

// 2. Локальная "БД" слотов и таймеров (в памяти + дамп в файл)
const DB_PATH = path.join(__dirname, '.quota_db.json');
let quotaState = {
    accounts: {
        "denua": { key: "AIzaSy_DENUA_КЛЮЧ...", unlocks_at: 0 },
        "elafea": { key: process.env.ELAFEA_API_KEY, unlocks_at: 0 },
        "trianiuma": { key: "AIzaSy_TRIANIUMA_КЛЮЧ...", unlocks_at: 0 }
    },
    active_slot: "elafea"
};

// Загрузка состояния из файла, если он существует
if (fs.existsSync(DB_PATH)) {
    quotaState = JSON.parse(fs.readFileSync(DB_PATH, 'utf8'));
}

function saveState() {
    fs.writeFileSync(DB_PATH, JSON.stringify(quotaState, null, 2));
}

let activeAgyProcess = null;

// ==========================================
// ПОДПИСЧИК: Обработка события исчерпания квоты
// ==========================================
coreBus.on('quota:exhausted', ({ slot, msToWait }) => {
    const unlockTime = Date.now() + msToWait;
    quotaState.accounts[slot].unlocks_at = unlockTime;
    
    console.log(`\n⚙️ [PUB/SUB] Слот [${slot}] ушел в кулдаун до ${new Date(unlockTime).toLocaleTimeString()}`);
    
    // Ищем следующий свободный слот
    const nextSlot = Object.keys(quotaState.accounts).find(key => {
        return quotaState.accounts[key].unlocks_at < Date.now();
    });

    if (nextSlot) {
        quotaState.active_slot = nextSlot;
        saveState();
        console.log(`⚜️ [PUB/SUB] Найден свободный слот: [${nextSlot}]. Ротация...`);
        coreBus.emit('system:respawn');
    } else {
        console.log(`\n🛑 [КРИТИЧЕСКИ] Все слоты (Google/GitHub/Search) исчерпаны. Ожидание отката таймеров...`);
        // В идеале тут запускается setTimeout, который разбудит систему, когда истечет первый таймер
        process.exit(1);
    }
});

// ==========================================
// ПОДПИСЧИК: Перезапуск ядра
// ==========================================
coreBus.on('system:respawn', () => {
    if (activeAgyProcess) {
        activeAgyProcess.removeAllListeners();
        activeAgyProcess.kill('SIGINT');
    }
    setTimeout(bootCLI, 1000); // Небольшая задержка для освобождения TTY
});

// ==========================================
// ИСПОЛНИТЕЛЬ: Запуск процесса AGY с прослушиванием
// ==========================================
function bootCLI() {
    const slotName = quotaState.active_slot;
    const apiKey = quotaState.accounts[slotName].key;
    
    console.log(`\n🚀 [LAM KERNEL] Запуск интерфейса. Активный слот: ${slotName}`);
    
    // Поднимаем процесс. Передаем ключи напрямую в env, 
    // чтобы изолироваться от глобальных конфигов.
    activeAgyProcess = spawn('agy', [], {
        stdio: ['inherit', 'pipe', 'pipe'], // Ввод оставляем за юзером, вывод парсим
        env: { 
            ...process.env, 
            GOOGLE_API_KEY: apiKey, 
            GEMINI_API_KEY: apiKey 
        }
    });

    activeAgyProcess.stdout.on('data', (data) => {
        const output = data.toString();
        process.stdout.write(output); // Рендерим вывод в консоль

        // Парсинг триггера ошибки из Antigravity CLI
        const quotaMatch = output.match(/Resets in (\d+)h(\d+)m(\d+)s/);
        
        if (quotaMatch) {
            const [ , hours, minutes, seconds ] = quotaMatch;
            const msToWait = (parseInt(hours) * 3600 + parseInt(minutes) * 60 + parseInt(seconds)) * 1000;
            
            // Публикуем событие в шину
            coreBus.emit('quota:exhausted', { slot: slotName, msToWait });
        }
    });

    activeAgyProcess.stderr.on('data', (data) => {
        process.stderr.write(data);
    });

    activeAgyProcess.on('exit', (code) => {
        if (code === 0) console.log('\n[LAM KERNEL] CLI завершил работу штатно.');
    });
}

// Старт
bootCLI();

