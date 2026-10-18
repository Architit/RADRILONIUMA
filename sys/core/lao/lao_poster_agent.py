#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
LAO POSTER AGENT CORE (SOVEREIGN LIVING CANVAS & ORBITAL SEXTANT ENGINE)
========================================================================
Deck 1 Supreme Visual Synthesis Engine:
Generates layered, document-framed, ultra-crisp Live Desktop Canvas Wallpapers.

ARCHITECTURE:
- LAYER 0: Background Substrate (Глубокий био-резонансный хвойный градиент Сольфеджио)
- LAYER 1: Document Margins & Tech Framing (Поля документа 45/35px, юстировочные кресты, шкалы)
- LAYER 2: Master Bounding Contour Frame (Центрирующая кибернетическая мастер-рамка со скошенными углами)
- LAYER 3: 5 Centered Functional Panels:
  3.1: Top Command Ribbon (Лента вкладок + Часы реального времени С СЕКУНДАМИ HH:mm:ss)
  3.2: Left Deck (Контур оборудования: Tesseract 4D, Laser, CNC, Graver, T7 SSD)
  3.3: Center Deck:
       - REAL ASTRONOMICAL ORBITAL CALENDAR SEXTANT (Динамические углы орбит: Солнечная, Лунная, Суточная 24ч, Секундный луч)
       - Swarm Nodes distributed circularly around orbits with laser synapses
       - 68-Mode Matrix Grid with readable phase icons (💤 • ⚡ • ⚙️ • 🎯 • 🪟)
  3.4: Right Deck (Суверенное ядро, Агенты LAO и Архитектура 5 состояний)
  3.5: Bottom Status Deck (Телеметрия узлов кластера, резонанс 528 Hz, паспорт)
- LAYER 4: Cover, Elevation Drop Shadows, Sharpness & Micro-Contrast Post-Processing
"""

import os
import sys
import math
import time
import json
import shutil
import subprocess
from pathlib import Path
from datetime import datetime, timezone
from typing import Dict, Any, Tuple
from PIL import Image, ImageDraw, ImageFont, ImageEnhance, ImageFilter

# Local imports
SCRIPT_DIR = Path(__file__).resolve().parent
sys.path.insert(0, str(SCRIPT_DIR))

from lao_letterer_agent import LaoLettererAgent
from lao_pointer_agent import LaoPointerAgent, WindowState

OUTPUT_DIR = Path("/root/RADRILONIUMA/data/wallpapers")
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
OUTPUT_IMG = OUTPUT_DIR / "current_wallpaper.png"

WIN_PICTURES = Path("/mnt/c/Users/BushM/Pictures")
SSD_VAULT_WALLPAPER = Path("/mnt/e/COCOON_PARALLEL_SESSIONS/cocoon_android/wallpapers")
FAST_WALLPAPER_EXE = Path("/mnt/c/setup/fast_wallpaper.exe")

class LaoPosterAgent:
    def __init__(self, width=1920, height=1080):
        self.agent_id = "LAO_POSTER_AGENT_001"
        self.width = width
        self.height = height
        self.letterer = LaoLettererAgent()
        self.pointer = LaoPointerAgent()
        
        # ТЕПЛАЯ БИОНИЧЕСКАЯ ПАЛИТРА СОЛЬФЕДЖИО
        self.colors = {
            "bg_top":          (10, 22, 14),      # Глубокий ночной хвойный
            "bg_bottom":       (4, 10, 7),        # Темный нефрит
            "margin_bg":       (8, 16, 11),       # Цвет внешних полей
            "frame_border":    (46, 125, 50),     # Мастер-контур рамки
            "card_bg":         (14, 30, 20, 248), # Панели полупрозрачные высококонтрастные
            "card_border":     (38, 96, 58),      # Окантовка карточек
            "warm_green":      (46, 125, 50),     # Теплая зеленая
            "yellow":          (250, 204, 21),    # Желтая солнечная
            "orange":          (251, 146, 60),    # Оранжевая теплая
            "green":           (34, 197, 94),     # Изумрудно-зеленая
            "lime":            (163, 230, 53),    # Салатовая яркая
            "turquoise":       (45, 212, 191),    # Бирюзовая аквамарин
            "white":           (255, 255, 255),
            "cream":           (254, 243, 199),   # Кремовый текст
            "muted":           (175, 185, 195),   # Контрастный светлый серый
            "state_sleeping":  (34, 76, 48),      # Спокойный хвойный
            "state_active":    (46, 125, 50),     # Теплый зеленый
            "state_working":   (251, 146, 60),    # Оранжевый пульс
            "state_current":   (163, 230, 53),    # Салатовый фокус
            "state_floating":  (45, 212, 191)     # Бирюзовое всплывающее
        }

    def render_poster(self) -> Tuple[Image.Image, Dict[str, Any]]:
        """Генерирует живой канвас с астрономическим секстантом, секундами и 5 центрированными слоями."""
        now = datetime.now().astimezone()
        start_year = datetime(2026, 1, 1).astimezone()
        days_elapsed = (now - start_year).days
        minute_tick = days_elapsed * 1440 + (now.hour * 60 + now.minute)
        
        # =====================================================================
        # СЛОЙ 0: ЖИВОЙ БИО-РЕЗОНАНСНЫЙ ФОН (BACKGROUND SUBSTRATE)
        # =====================================================================
        img = Image.new("RGBA", (self.width, self.height), self.colors["bg_top"] + (255,))
        draw = ImageDraw.Draw(img)
        
        # Плавный вертикальный градиент
        for y in range(0, self.height, 2):
            factor = y / float(self.height)
            r = int(self.colors["bg_top"][0] * (1 - factor) + self.colors["bg_bottom"][0] * factor)
            g = int(self.colors["bg_top"][1] * (1 - factor) + self.colors["bg_bottom"][1] * factor)
            b = int(self.colors["bg_top"][2] * (1 - factor) + self.colors["bg_bottom"][2] * factor)
            draw.rectangle([0, y, self.width, y + 2], fill=(r, g, b, 255))
            
        # Фоновая микросетка 50x50
        for gx in range(25, self.width, 50):
            for gy in range(25, self.height, 50):
                draw.rectangle([gx, gy, gx + 2, gy + 2], fill=(163, 230, 53, 18))

        # =====================================================================
        # СЛОЙ 1: ПОЛЯ ДОКУМЕНТА И ТЕХНИЧЕСКИЕ ДЕКОРАЦИИ (DOCUMENT MARGINS)
        # =====================================================================
        m_left, m_top, m_right, m_bottom = 45, 35, self.width - 45, self.height - 35
        
        # Юстировочные кресты по углам
        crosshair_len = 16
        corners = [
            (20, 18), (self.width - 20, 18),
            (20, self.height - 18), (self.width - 20, self.height - 18)
        ]
        for cx, cy in corners:
            draw.line([cx - crosshair_len, cy, cx + crosshair_len, cy], fill=self.colors["lime"], width=1)
            draw.line([cx, cy - crosshair_len, cx, cy + crosshair_len], fill=self.colors["lime"], width=1)
            draw.ellipse([cx - 4, cy - 4, cx + 4, cy + 4], outline=self.colors["yellow"], width=1)

        # Линейные насечки (Ruler Ticks)
        for rx in range(100, self.width - 100, 50):
            tick_h = 6 if rx % 100 == 0 else 3
            draw.line([rx, 15, rx, 15 + tick_h], fill=(46, 125, 50), width=1)
            draw.line([rx, self.height - 15 - tick_h, rx, self.height - 15], fill=(46, 125, 50), width=1)

        # Технические штампы (БЕЗ СПАМА О РАЗРЕШЕНИИ ЭКРАНА!)
        draw.text((55, 16), "DOCUMENT: [RADRILONIUMA_LIVING_CANVAS_V2] • MASTER_COMPOSITION • 528 Hz", fill=self.colors["muted"], font=self.letterer.doc_font)
        draw.text((self.width - 480, 16), f"СУВЕРЕННОЕ ЯДРО • КАНВАС РАБОЧЕГО СТОЛА • ВРЕМЯ ХОСТА {now.strftime('%H:%M:%S')}", fill=self.colors["lime"], font=self.letterer.doc_font)
        draw.text((55, self.height - 24), "SECURITY: AI CRYPTO SOVEREIGN PASSPORT RADR-SOV-490E1C7A4C2A6938 • VALIDATED", fill=self.colors["turquoise"], font=self.letterer.doc_font)
        draw.text((self.width - 390, self.height - 24), "SHEET 01/01 • KHALIDRAD / ARCHITIT / BUSHM", fill=self.colors["yellow"], font=self.letterer.doc_font)

        # =====================================================================
        # СЛОЙ 2: МАСТЕР-РАМКА И КОНТУР РАБОЧЕГО СТОЛА (MASTER BOUNDING CONTOUR)
        # =====================================================================
        frame_box = [m_left, m_top, m_right, m_bottom]
        
        # Световой ореол контура
        draw.rounded_rectangle([frame_box[0] - 2, frame_box[1] - 2, frame_box[2] + 2, frame_box[3] + 2], radius=14, outline=(34, 197, 94, 80), width=3)
        draw.rounded_rectangle(frame_box, radius=12, fill=(10, 22, 15, 140), outline=self.colors["frame_border"], width=2)
        
        # Угловые скобки
        b_len = 24
        draw.line([frame_box[0], frame_box[1] + b_len, frame_box[0], frame_box[1]], fill=self.colors["yellow"], width=3)
        draw.line([frame_box[0], frame_box[1], frame_box[0] + b_len, frame_box[1]], fill=self.colors["yellow"], width=3)
        draw.line([frame_box[2] - b_len, frame_box[1], frame_box[2], frame_box[1]], fill=self.colors["yellow"], width=3)
        draw.line([frame_box[2], frame_box[1], frame_box[2], frame_box[1] + b_len], fill=self.colors["yellow"], width=3)
        draw.line([frame_box[0], frame_box[3] - b_len, frame_box[0], frame_box[3]], fill=self.colors["yellow"], width=3)
        draw.line([frame_box[0], frame_box[3], frame_box[0] + b_len, frame_box[3]], fill=self.colors["yellow"], width=3)
        draw.line([frame_box[2] - b_len, frame_box[3], frame_box[2], frame_box[3]], fill=self.colors["yellow"], width=3)
        draw.line([frame_box[2], frame_box[3] - b_len, frame_box[2], frame_box[3]], fill=self.colors["yellow"], width=3)

        # =====================================================================
        # СЛОЙ 3.1: ВЕРХНЯЯ КОМАНДНАЯ ЛЕНТА И МЕНЮ ВКЛАДОК (TOP RIBBON & TABS)
        # =====================================================================
        inner_pad_x = 20
        ribbon_box = [frame_box[0] + inner_pad_x, frame_box[1] + 16, frame_box[2] - inner_pad_x, frame_box[1] + 104]
        draw.rounded_rectangle(ribbon_box, radius=10, fill=self.colors["card_bg"], outline=self.colors["lime"], width=2)
        
        draw.text((ribbon_box[0] + 18, ribbon_box[1] + 12), "⚜️ RADRILONIUMA  •  LIVING DESKTOP CANVAS", fill=self.colors["white"], font=self.letterer.title_font)
        
        # Интерактивные вкладки документа
        tabs = [
            ("● КАНВАС-68", True),
            ("○ ОБОРУДОВАНИЕ", False),
            ("○ СЕКСТАНТ ОРБИТ", False),
            ("○ СУВЕРЕННОЕ ЯДРО", False),
            ("○ МОСТИК СЕССИИ", False)
        ]
        tab_start_x = ribbon_box[0] + 18
        tab_y = ribbon_box[1] + 52
        for title, is_active in tabs:
            tw, th = self.letterer.draw_tab(draw, (tab_start_x, tab_y), title, is_active=is_active)
            tab_start_x += tw + 10

        # БИО-РЕЗОНАНСНЫЙ СТАТУС-ИНДИКАТОР (БЕЗ СТАТИЧЕСКИХ ЗАВИСАЮЩИХ ЧАСОВ - ЧАСЫ ЖИВУТ В HUD!)
        status_x = ribbon_box[2] - 560
        draw.text((status_x, ribbon_box[1] + 16), "⚜️ РЕЗОНАНС 528 Hz  •  СУВЕРЕННОЕ ЯДРО", fill=self.colors["orange"], font=self.letterer.header_font)
        draw.text((status_x, ribbon_box[1] + 48), "ЖИВОЙ ИНТЕРАКТИВНЫЙ КАНВАС-68  •  СИНХРОНИЗАЦИЯ УЗЛОВ", fill=self.colors["cream"], font=self.letterer.sub_font)
        draw.text((status_x, ribbon_box[1] + 74), f"КВАНТ-ТИК: #{minute_tick:,}  |  DEV_01 <-> DEV_02 ATESIRT  |  OK", fill=self.colors["turquoise"], font=self.letterer.small_mono)

        # =====================================================================
        # СЛОЙ 3.2: ЛЕВАЯ ПАНЕЛЬ / ОБОРУДОВАНИЕ И ЧПУ/ЛАЗЕР/SSD (LEFT DECK)
        # =====================================================================
        content_top = ribbon_box[3] + 14
        content_bottom = frame_box[3] - 76
        col_gap = 16
        deck_w = 440
        center_w = (ribbon_box[2] - ribbon_box[0]) - (deck_w * 2) - (col_gap * 2)
        
        left_box = [ribbon_box[0], content_top, ribbon_box[0] + deck_w, content_bottom]
        draw.rounded_rectangle(left_box, radius=10, fill=self.colors["card_bg"], outline=self.colors["card_border"], width=2)
        draw.rectangle([left_box[0] + 12, left_box[1] + 12, left_box[0] + 18, left_box[1] + 44], fill=self.colors["orange"])
        draw.text((left_box[0] + 28, left_box[1] + 12), "КОНТУР ОБОРУДОВАНИЯ", fill=self.colors["orange"], font=self.letterer.header_font)
        draw.text((left_box[0] + 28, left_box[1] + 42), "Тессеракт 4D • Лазер • ЧПУ • Гравер • T7 SSD", fill=self.colors["muted"], font=self.letterer.small_mono)

        hw_cards = [
            ("TESSERACT 4D", "Квантово-Геометрический Гиперкуб", "4D ортогональные проекции, фазовый сдвиг", "ПОКОЙ", self.colors["turquoise"], "SLEEPING"),
            ("ЛАЗЕРНЫЙ МОДУЛЬ", "Оптический Блок Резки и Прожига", "Фокус 0.05 мм, ШИМ 100%, обдув воздухом", "ГОТОВ", self.colors["yellow"], "ACTIVE"),
            ("ЧПУ ФРЕЗЕР (CNC)", "3-5 Осевой Станок и G-Code Ядро", "Подача 1200 мм/мин, прецизионный шпиндель", "СТЕНДБАЙ", self.colors["lime"], "ACTIVE"),
            ("ВЫСОКОТОЧНЫЙ ГРАВЕР", "Микрогравировка Поверхностей", "Векторная растровая штриховка 0.1 мм", "ГОТОВ", self.colors["warm_green"], "SLEEPING"),
            ("SAMSUNG SSD T7", "Samsung PSSD T7 Mesh Vault 1TB", "Зеркалирование сессий и криптопаспорта", "СИНХРО", self.colors["green"], "WORKING")
        ]

        hy = left_box[1] + 68
        card_h = (left_box[3] - hy - 16) // len(hw_cards) - 8
        for title, subtitle, desc, status_lbl, col, state in hw_cards:
            c_rect = [left_box[0] + 12, hy, left_box[2] - 12, hy + card_h]
            draw.rounded_rectangle(c_rect, radius=7, fill=(18, 40, 28), outline=(42, 106, 62), width=1)
            draw.rectangle([c_rect[0] + 2, c_rect[1] + 8, c_rect[0] + 6, c_rect[3] - 8], fill=col)
            draw.text((c_rect[0] + 14, hy + 8), title, fill=col, font=self.letterer.body_bold)
            draw.text((c_rect[2] - 110, hy + 8), f"[{status_lbl}]", fill=self.colors["cream"], font=self.letterer.badge_font)
            draw.text((c_rect[0] + 14, hy + 34), subtitle, fill=self.colors["white"], font=self.letterer.mono_font)
            draw.text((c_rect[0] + 14, hy + 62), desc, fill=self.colors["muted"], font=self.letterer.small_mono)
            draw.text((c_rect[0] + 14, hy + 98), f"Фаза окна: {state} (Внутри канваса)", fill=self.colors["lime"], font=self.letterer.tiny_mono)
            hy += card_h + 8

        # =====================================================================
        # СЛОЙ 3.3: ЦЕНТРАЛЬНАЯ ДЕКА (АСТРОНОМИЧЕСКИЙ СЕКСТАНТ И 68-РЕЖИМОВ)
        # =====================================================================
        center_x1 = left_box[2] + col_gap
        center_x2 = center_x1 + center_w
        center_box = [center_x1, content_top, center_x2, content_bottom]
        draw.rounded_rectangle(center_box, radius=10, fill=self.colors["card_bg"], outline=self.colors["lime"], width=2)
        draw.rectangle([center_box[0] + 14, center_box[1] + 12, center_box[0] + 20, center_box[1] + 44], fill=self.colors["yellow"])
        draw.text((center_box[0] + 30, center_box[1] + 12), "ОРБИТАЛЬНЫЙ ЧАСОВОЙ КАЛЕНДАРНЫЙ СЕКСТАНТ", fill=self.colors["yellow"], font=self.letterer.header_font)
        draw.text((center_box[0] + 30, center_box[1] + 42), "Реальные орбиты планет, Солнца, Луны и 60-секундный луч времени", fill=self.colors["muted"], font=self.letterer.small_mono)

        # Центр планетарного секстанта
        ocx = (center_box[0] + center_box[2]) // 2
        ocy = center_box[1] + 225

        # 1. ОРБИТА СОЛНЕЧНОГО КАЛЕНДАРЯ (R=185)
        r_solar = 185
        draw.ellipse([ocx - r_solar, ocy - r_solar, ocx + r_solar, ocy + r_solar], outline=(36, 86, 52), width=2)
        # 4 Квадранта сезонов
        for q in range(4):
            q_rad = math.radians(q * 90 - 45)
            qx1 = ocx + int((r_solar - 14) * math.cos(q_rad))
            qy1 = ocy + int((r_solar - 14) * math.sin(q_rad))
            qx2 = ocx + int((r_solar + 14) * math.cos(q_rad))
            qy2 = ocy + int((r_solar + 14) * math.sin(q_rad))
            draw.line([qx1, qy1, qx2, qy2], fill=self.colors["yellow"], width=2)

        # Реальный угол Солнца по текущему дню года
        day_of_year = now.timetuple().tm_yday
        solar_rad = math.radians((day_of_year / 365.25) * 360.0 - 90.0)
        smx = ocx + int(r_solar * math.cos(solar_rad))
        smy = ocy + int(r_solar * math.sin(solar_rad))
        draw.ellipse([smx - 9, smy - 9, smx + 9, smy + 9], fill=self.colors["yellow"], outline=self.colors["white"], width=2)
        draw.text((smx + 14, smy - 8), f"☀️ СОЛНЦЕ [ДЕНЬ #{day_of_year}]", fill=self.colors["yellow"], font=self.letterer.tiny_mono)

        # 2. ОРБИТА ЛУННОГО ЦИКЛА (R=145)
        r_lunar = 145
        draw.ellipse([ocx - r_lunar, ocy - r_lunar, ocx + r_lunar, ocy + r_lunar], outline=(28, 70, 44), width=1)
        moon_age = ((days_elapsed + 14) % 29.53)
        lunar_rad = math.radians((moon_age / 29.53) * 360.0 - 90.0)
        lmx = ocx + int(r_lunar * math.cos(lunar_rad))
        lmy = ocy + int(r_lunar * math.sin(lunar_rad))
        draw.ellipse([lmx - 7, lmy - 7, lmx + 7, lmy + 7], fill=self.colors["cream"], outline=self.colors["turquoise"], width=2)
        draw.text((lmx + 12, lmy - 8), f"🌖 ЛУНА [ФАЗА {int(moon_age)}/29]", fill=self.colors["cream"], font=self.letterer.tiny_mono)

        # 3. СУТОЧНАЯ 24-ЧАСОВАЯ ОРБИТА (R=105)
        r_day = 105
        draw.ellipse([ocx - r_day, ocy - r_day, ocx + r_day, ocy + r_day], outline=(38, 96, 58), width=2)
        for h in range(24):
            h_rad = math.radians(h * 15 - 90)
            hlen = 8 if h % 6 == 0 else 4
            hx1 = ocx + int((r_day - hlen) * math.cos(h_rad))
            hy1 = ocy + int((r_day - hlen) * math.sin(h_rad))
            hx2 = ocx + int((r_day + hlen) * math.cos(h_rad))
            hy2 = ocy + int((r_day + hlen) * math.sin(h_rad))
            draw.line([hx1, hy1, hx2, hy2], fill=self.colors["lime"] if h % 6 == 0 else (28, 70, 44), width=2 if h % 6 == 0 else 1)

        sec_of_day = now.hour * 3600 + now.minute * 60 + now.second
        diurnal_rad = math.radians((sec_of_day / 86400.0) * 360.0 - 90.0)
        dmx = ocx + int(r_day * math.cos(diurnal_rad))
        dmy = ocy + int(r_day * math.sin(diurnal_rad))
        draw.ellipse([dmx - 6, dmy - 6, dmx + 6, dmy + 6], fill=self.colors["lime"], outline=self.colors["white"], width=1)

        # 4. СЕКУНДНО-МИНУТНЫЙ ЛАЗЕРНЫЙ СЕКСТАНТ (R=70)
        r_min = 70
        draw.ellipse([ocx - r_min, ocy - r_min, ocx + r_min, ocy + r_min], outline=self.colors["turquoise"], width=1)
        sec_rad = math.radians((now.second / 60.0) * 360.0 - 90.0)
        sx = ocx + int(r_min * math.cos(sec_rad))
        sy = ocy + int(r_min * math.sin(sec_rad))
        # Лазерный луч секстанта с точной секундой
        draw.line([ocx, ocy, sx, sy], fill=self.colors["orange"], width=2)
        draw.ellipse([sx - 4, sy - 4, sx + 4, sy + 4], fill=self.colors["orange"], outline=self.colors["white"], width=1)

        # Центр: Ark Ядро Архитектора
        cr = 22
        draw.ellipse([ocx - cr, ocy - cr, ocx + cr, ocy + cr], fill=(42, 78, 34), outline=self.colors["yellow"], width=2)
        draw.text((ocx - 14, ocy - 8), "ARK", fill=self.colors["white"], font=self.letterer.badge_font)

        # 8 Планетарных узлов роя, распределённых по кругу под разными углами
        swarm_nodes = [
            {"label": "ПЛАНИРОВАНИЕ", "r_dist": 185, "angle": 30,  "col": self.colors["lime"]},
            {"label": "МАНДАТ И ДИР.", "r_dist": 145, "angle": 75,  "col": self.colors["yellow"]},
            {"label": "MCP CORE",     "r_dist": 185, "angle": 135, "col": self.colors["turquoise"]},
            {"label": "ЖИВЫЕ ОБОИ",   "r_dist": 145, "angle": 190, "col": self.colors["orange"]},
            {"label": "КОНВЕЙЕР",     "r_dist": 185, "angle": 240, "col": self.colors["lime"]},
            {"label": "АППАРАТ",      "r_dist": 145, "angle": 285, "col": self.colors["green"]},
            {"label": "ATESIRT DROID", "r_dist": 185, "angle": 330, "col": self.colors["turquoise"]},
            {"label": "VBS BOOT",     "r_dist": 105, "angle": 15,  "col": self.colors["warm_green"]}
        ]
        for sn in swarm_nodes:
            s_rad = math.radians(sn["angle"])
            tx = ocx + int(sn["r_dist"] * math.cos(s_rad))
            ty = ocy + int(sn["r_dist"] * math.sin(s_rad))
            draw.line([ocx, ocy, tx, ty], fill=(28, 68, 44), width=1)
            draw.ellipse([tx - 5, ty - 5, tx + 5, ty + 5], fill=sn["col"], outline=self.colors["white"], width=1)

        # Сетка 68 Режимов в нижней части центральной деки
        grid_start_y = center_box[1] + 420
        grid_rect = [center_box[0] + 12, grid_start_y, center_box[2] - 12, center_box[3] - 12]
        draw.rounded_rectangle(grid_rect, radius=8, fill=(14, 30, 22), outline=self.colors["card_border"], width=1)
        draw.text((center_box[0] + 20, grid_start_y + 10), "МАТРИЦА 68 РЕЖИМОВ (Спящее 💤 • Активное ⚡ • Рабочее ⚙️ • Текущее 🎯 • Плавающее 🪟)", fill=self.colors["lime"], font=self.letterer.body_bold)

        cols = 8
        cell_w = (grid_rect[2] - grid_rect[0] - 24) // cols
        cell_h = (grid_rect[3] - grid_start_y - 42) // 9
        
        mode_keys = list(self.pointer.modes_registry.keys())
        for idx, mkey in enumerate(mode_keys[:68]):
            m = self.pointer.modes_registry[mkey]
            r_idx = idx // cols
            c_idx = idx % cols
            cx = grid_rect[0] + 12 + c_idx * (cell_w + 2)
            cy = grid_start_y + 36 + r_idx * (cell_h + 2)
            
            st = m["state"]
            st_color = self.colors["state_sleeping"]
            border_color = (36, 92, 56)
            icon = "💤"
            if st == WindowState.ACTIVE:
                st_color = self.colors["warm_green"]
                border_color = self.colors["lime"]
                icon = "⚡"
            elif st == WindowState.WORKING:
                st_color = self.colors["orange"]
                border_color = self.colors["yellow"]
                icon = "⚙️"
            elif st == WindowState.CURRENT:
                st_color = self.colors["lime"]
                border_color = self.colors["white"]
                icon = "🎯"
            elif st == WindowState.FLOATING:
                st_color = self.colors["turquoise"]
                border_color = self.colors["white"]
                icon = "🪟"

            draw.rounded_rectangle([cx, cy, cx + cell_w - 4, cy + cell_h], radius=5, fill=(20, 42, 28), outline=border_color, width=1)
            short_id = mkey[:8]
            draw.text((cx + 5, cy + 3), f"{icon} {short_id}", fill=self.colors["cream"], font=self.letterer.tiny_mono)
            draw.text((cx + 5, cy + 18), m["name"][:11], fill=self.colors["muted"], font=self.letterer.tiny_mono)

        # =====================================================================
        # СЛОЙ 3.4: ПРАВАЯ ДЕКА / СУВЕРЕННОЕ ЯДРО И АГЕНТЫ (RIGHT DECK)
        # =====================================================================
        right_box = [center_x2 + col_gap, content_top, ribbon_box[2], content_bottom]
        draw.rounded_rectangle(right_box, radius=10, fill=self.colors["card_bg"], outline=self.colors["card_border"], width=2)
        draw.rectangle([right_box[0] + 12, right_box[1] + 12, right_box[0] + 18, right_box[1] + 44], fill=self.colors["turquoise"])
        draw.text((right_box[0] + 28, right_box[1] + 12), "СУВЕРЕННОЕ ЯДРО И АГЕНТЫ", fill=self.colors["turquoise"], font=self.letterer.header_font)
        draw.text((right_box[0] + 28, right_box[1] + 42), "Pointer • Poster • Letterer • Delta Force Core", fill=self.colors["muted"], font=self.letterer.small_mono)

        plan_items = [
            ("LAO TRIUMVIRATE", "Pointer, Poster & Letterer Core", "Интеракция, канвас живых обоев и каллиграфия.", "СИНХРО", self.colors["lime"]),
            ("МОДЕЛЬ 5 СОСТОЯНИЙ", "Иерархия окон без захламления", "Спящее -> Активное -> Рабочее -> Плавающее.", "АКТИВНО", self.colors["yellow"]),
            ("ВСПЛЫВАЮЩИЙ ШЛЮЗ", "Zero Floating Clutter Protocol", "Окна всплывают только при звонке или клике.", "ЗАЩИТА", self.colors["turquoise"]),
            ("МАТРИЦА 68 РЕЖИМОВ", "Полный охват всех узлов кластера", "ЧПУ, лазер, шлюзы, сокеты, криптопаспорт.", "РЕЗОНАНС", self.colors["warm_green"]),
            ("ТЕПЛАЯ ПАЛИТРА", "Бионическая гармония Сольфеджио", "Теплый зеленый, желтый, оранжевый, салатовый.", "100%", self.colors["green"])
        ]

        py = right_box[1] + 68
        p_card_h = (right_box[3] - py - 16) // len(plan_items) - 8
        for title, sub, desc, badge, col in plan_items:
            c_rect = [right_box[0] + 12, py, right_box[2] - 12, py + p_card_h]
            draw.rounded_rectangle(c_rect, radius=7, fill=(18, 40, 28), outline=(42, 106, 62), width=1)
            draw.text((c_rect[0] + 14, py + 8), title, fill=col, font=self.letterer.body_bold)
            draw.text((c_rect[2] - 110, py + 8), f"[{badge}]", fill=self.colors["cream"], font=self.letterer.badge_font)
            draw.text((c_rect[0] + 14, py + 34), sub, fill=self.colors["white"], font=self.letterer.mono_font)
            draw.text((c_rect[0] + 14, py + 62), desc, fill=self.colors["muted"], font=self.letterer.small_mono)
            py += p_card_h + 8

        # =====================================================================
        # СЛОЙ 3.5: НИЖНИЙ СТАТУС-БАР И ФУТЕР ДОКУМЕНТА (BOTTOM DECK)
        # =====================================================================
        footer_box = [ribbon_box[0], content_bottom + 12, ribbon_box[2], frame_box[3] - 14]
        draw.rounded_rectangle(footer_box, radius=8, fill=self.colors["card_bg"], outline=self.colors["warm_green"], width=1)
        draw.text((footer_box[0] + 20, footer_box[1] + 8), "⚜️ РАДРИЛОНИУМА: ОРБИТЫ СИНХРОНИЗИРОВАНЫ | ЧАСТОТА 528 Hz | СУВЕРЕННЫЙ ДОКУМЕНТ: КАНВАС-68-V2", fill=self.colors["white"], font=self.letterer.body_bold)
        draw.text((footer_box[0] + 20, footer_box[1] + 30), "УЗЛЫ: DEV_01_BUSHMASTER <-> DEV_02_ATESIRT (Samsung SM-A266B) <-> DEV_03_UBUNTU_WSL2 | ПАСПОРТ: RADR-SOV-490E1C7A4C2A6938", fill=self.colors["lime"], font=self.letterer.mono_font)

        metadata = {
            "title": "RADRILONIUMA LAO POSTER & 68-MODE LIVING CANVAS",
            "format": "DOCUMENT_CANVAS_V2",
            "palette": "WARM_GREEN_YELLOW_ORANGE_GREEN_LIME_TURQUOISE",
            "modes_count": 68,
            "clock_seconds": now.strftime("%H:%M:%S"),
            "date": now.strftime("%d.%m.%Y"),
            "sextant_active": True,
            "generated_at_utc": now.isoformat()
        }

        # =====================================================================
        # СЛОЙ 4: ОБЛОЖКА И ПОВЫШЕНИЕ РЕЗКОСТИ И ЧЕТКОСТИ
        # =====================================================================
        rgb_img = img.convert("RGB")
        sharpness_enhancer = ImageEnhance.Sharpness(rgb_img)
        crisp_img = sharpness_enhancer.enhance(1.65)
        contrast_enhancer = ImageEnhance.Contrast(crisp_img)
        final_img = contrast_enhancer.enhance(1.12)

        return final_img, metadata

    def generate_and_apply(self) -> Dict[str, Any]:
        """Генерирует живой канвас и развертывает его на рабочий стол Windows мгновенно через fast_wallpaper.exe."""
        img, meta = self.render_poster()
        
        # 1. Сохранение в WSL
        img.save(str(OUTPUT_IMG), "PNG", optimize=True)
        meta_file = OUTPUT_IMG.with_suffix(".json")
        with open(meta_file, "w", encoding="utf-8") as f:
            json.dump(meta, f, indent=2, ensure_ascii=False)

        # 2. Репликация в Pictures
        WIN_PICTURES.mkdir(parents=True, exist_ok=True)
        win_target = WIN_PICTURES / "Radriloniuma_Dynamic_HUD.png"
        win_target_a = WIN_PICTURES / "Radriloniuma_Wallpaper_A.png"
        win_tablet = WIN_PICTURES / "Radriloniuma_Tablet_Wallpaper.png"
        
        shutil.copy2(OUTPUT_IMG, win_target)
        shutil.copy2(OUTPUT_IMG, win_target_a)
        shutil.copy2(OUTPUT_IMG, win_tablet)

        if SSD_VAULT_WALLPAPER.exists():
            try:
                shutil.copy2(OUTPUT_IMG, SSD_VAULT_WALLPAPER / "current_wallpaper.png")
            except Exception:
                pass

        # 3. Мгновенное применение через скомпилированный C# fast_wallpaper.exe (0.18 сек!)
        applied_to_win = False
        if FAST_WALLPAPER_EXE.exists():
            try:
                subprocess.run([str(FAST_WALLPAPER_EXE)], capture_output=True, timeout=5)
                applied_to_win = True
            except Exception as e:
                meta["win_apply_error"] = str(e)
        else:
            ps_exe = "/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe"
            ps_script = "C:/setup/set_desktop_wallpaper.ps1"
            if Path(ps_exe).exists():
                try:
                    subprocess.run([ps_exe, "-NoProfile", "-ExecutionPolicy", "Bypass", "-File", ps_script], capture_output=True, timeout=10)
                    applied_to_win = True
                except Exception as e:
                    meta["win_apply_error"] = str(e)

        return {
            "status": "CANVAS_GENERATED_AND_APPLIED",
            "clock": meta["clock_seconds"],
            "date": meta["date"],
            "sextant_active": meta["sextant_active"],
            "applied_to_windows_desktop": applied_to_win,
            "timestamp_utc": meta["generated_at_utc"]
        }

if __name__ == "__main__":
    poster = LaoPosterAgent()
    res = poster.generate_and_apply()
    print("=== LAO POSTER AGENT CORE EXECUTED ===")
    print(json.dumps(res, indent=2, ensure_ascii=False))
