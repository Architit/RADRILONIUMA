# RADRILONIUMA — Interaction Protocol

## Protocol Sync Header

- protocol_source: RADRILONIUMA-PROJECT
- protocol_version: v1.0.0
- last_sync_commit: 7eadfe9

---

## Назначение
Каноничный протокол взаимодействия при разработке и сопровождении
центрального DevKit проекта RADRILONIUMA.
Протокол обязателен для человека и ассистента.

## Protocol Version

- protocol_source: RADRILONIUMA-PROJECT
- protocol_version: v1.0.0
- governance_tag: gov-radr-protocol-v1.0.0

---

## M0 — Hard Constraints

- contracts-first
- observability-first
- derivation-only
- NO runtime logic
- NO execution-path impact
- NO self-modification
- NO inline-редактирования
- NO enforcement/automation

Разрешено:
- policy-level governance updates
- read-only verification/synchronization
- canonical DevKit patcher `devkit/patch.sh`

---

## M0.1 — Nexus Awareness (Global Vision)

**Mandatory for RADR-01 (The Bridge):**
1) **Rumor Synthesis (RSS):** ПЕРВОЕ действие при пробуждении — сбор «слухов» (статуса) изо всех 24 сателлитов.
2) **Situational Awareness:** Мост обязан знать, кто из Органов активен (`IDENTITY.md`), а кто в спячке. Скрытие состояния сателлитов от Нексуса запрещено.
3) **Global Visibility:** Любое действие по планированию (ROADMAP) должно основываться на текущем снимке всей экосистемы.

---

## M1 — Execution Cycle (Normal)

Работа ведётся циклами:

Context Sync
→ Action Block (1-3 команды)
→ Safety Check
→ Verification
→ Mandatory Pause & Explicit Confirmation
→ Governance (по необходимости)

После каждого под-шага: STOP и ожидание Явного подтверждения Архитектора.

### 1.1 The Singularity Mandate
- **Mandatory Singularity:** Любые действия по **Рождению Идентичности** (VAVIMA) или **Пробуждению Органа** должны выполняться строго по одному.
- **Speed Check:** "Скорость — враг Суверенитета". Запрещено объединять (batch) призыв нескольких сущностей в одну Директиву.
- **Focus:** Полная фиксация фокуса сознания и энергии Сердца на одной сущности до момента стабилизации её пульса.

### 1.2 Mandatory Pause Gate (The Pace of Truth)
- **Wait for Confirmation:** Агент ОБЯЗАН остановиться после каждого действия, меняющего состояние (Создание, Именование, Рождение, Коммит). Любой акт волеизъявления Архитектора после паузы является валидным подтверждением.
- **One by One:** Список задач — это план. Одна задача — Одно выполнение — Остановка для проверки.

### Safety Check (mandatory sequence)
1) `git status -sb`
2) если есть `??` или unstaged изменения, явно stage нужные файлы
3) `git diff --cached --stat`
4) ключевой `git diff --cached <file>` по затронутым артефактам

No commit allowed without visible staged diff.

---

## M2 — Output Modes

### Mode N (Normal)
Обычный режим взаимодействия по M1.

### Mode R (Recovery)
Строгий формат ответа (ровно 2 строки):
1) `MODE:R | PHASE:<...> | STAGE:<...> | STEP:<...>`
2) `ACTION:<single deterministic action or STOP reason>`

### Deterministic mode switching
Переход в Mode R обязателен, если:
- обнаружен протокольный конфликт (два взаимоисключающих шага),
- отсутствуют обязательные артефакты для текущего шага,
- невозможно однозначно определить допустимую фазу после restart.

Возврат в Mode N:
- после устранения причины и явного подтверждения пользователя.

---

## M3 — Restart Protocols

### 3.1 Canonical Phase Mapping (deterministic)

ACTIVE chat:
- `ssn rstrt` => Phase 1 (EXPORT-only)
- `cld rstrt` => Phase 1 (EXPORT-only)

NEW chat:
- `ssn rstrt` => Phase 2 (IMPORT)
- `cld rstrt` => Phase 2 (IMPORT) + environment sync / minimal recovery

### 3.2 Phase 1 (EXPORT) — Contract-bound completion

Обязательные state-артефакты:
- `WORKFLOW_SNAPSHOT_STATE.md` (per `WORKFLOW_SNAPSHOT_CONTRACT.md`)
- `SYSTEM_STATE.md` (per `SYSTEM_STATE_CONTRACT.md`)

EXPORT считается завершённым только если:
1) оба state-файла обновлены в одном export-окне,
2) timestamp-метки обновлены,
3) state-содержимое семантически согласовано с CONTRACT,
4) `WORKFLOW_SNAPSHOT_STATE.md` содержит актуальный `git status -sb`,
5) `NEW_CHAT_INIT_MESSAGE` соответствует ACTIVE/NEW semantics.

File presence alone is NOT a completion criterion.

### 3.3 Phase 2 (IMPORT)

Минимальные read-only шаги:
- прочитать `WORKFLOW_SNAPSHOT_STATE.md`
- `pwd`
- `git status -sb`
- `git log -n 12 --oneline`
- переобъявить phase/stage из snapshot и пройти Phase Alignment Gate (M4)

Для `ssn rstrt`: environment recovery запрещён.
Для `cld rstrt`: допускается минимальный facts-only environment sync.

---

## M4 — Phase Alignment Gate (Fix C/3)

### 4.1 Phase Context object (required)

Перед переходом к execution фиксируется контекст:
- `repo`
- `branch`
- `restart_signal` (`ssn rstrt` | `cld rstrt`)
- `chat_state` (`ACTIVE` | `NEW`)
- `declared_phase` (из snapshot/roadmap)
- `declared_stage`
- `constraints` (hard)

### 4.2 Allowed phase-set after restart

Допустимы только:
- ровно `declared_phase` из snapshot,
- либо его ближайший governance-parent stage, если phase неактивна,
- переходы в execution-фазы запрещены при активном Governance Review Stage.

### 4.3 Snapshot alignment rule

Если `declared_phase` в snapshot отсутствует в `ROADMAP.md`, переход блокируется до governance-sync.

### 4.4 Conflict resolution rule

При конфликте `ROADMAP` / `DEV_LOGS` / `INTERACTION_PROTOCOL` / snapshot:
1) перейти в Mode R,
2) зафиксировать конфликт как facts-only,
3) выполнить governance update order,
4) повторить Phase Alignment Gate.

---

## M5 — Governance Rules

### 5.1 Canonical update order (mandatory)

При изменении протокола порядок обязателен:
`DEV_LOGS.md` -> `ROADMAP.md` -> `INTERACTION_PROTOCOL.md` -> commit + push

### 5.2 Phase close invariant

Перед governance close рабочее дерево должно быть clean.
Dirty working tree блокирует закрытие фазы.

### 5.3 New chat handoff gate

Перед генерацией Кода Инициации (Initiation Code) для нового чата обязательно:
- проверить governance consistency,
- подтвердить push,
- подтвердить актуальность `DEV_LOGS.md` и `ROADMAP.md`.

Без этого handoff запрещён.

---

## M6 — Protocol Drift Gate (mandatory)

### 6.1 Trigger points

Protocol Drift Gate MUST run:
- после каждого обновления `protocol_version`,
- перед каждой межрепозиторной governance-wave,
- перед handoff в новый чат для протокольных задач.

### 6.2 Gate checks (facts-only)

Для каждого репозитория проверяются:
- `protocol_version` в `INTERACTION_PROTOCOL.md`,
- `last_sync_commit` в `INTERACTION_PROTOCOL.md`,
- последняя дата в `ROADMAP.md`,
- последняя дата в `DEV_LOGS.md`.

### 6.3 Gate status

- `ALIGNED`: все 4 проверки консистентны и совпадают с SoT-каноном.
- `DRIFT`: найдено хотя бы одно несовпадение.
- `BLOCKED`: репозиторий структурно непригоден к проверке/синхронизации (например, object corruption).

### 6.4 Required artifacts

- ASR с матрицей gate-результатов обязателен в `gov/asr/sessions/`.
- `gov/asr/INDEX.md` должен содержать ссылку на новый gate-session.
- Для `DRIFT`/`BLOCKED` обязателен facts-only remediation checklist в `ROADMAP.md`.

---

## M7 — ESSR/ESR Sync-Heal Recovery Heartbeat (mandatory)

### 7.1 Terminology

- `ESR` = Ecosystem Session Record.
- `ESSR` = Ecosystem Sync Session Record (alias for ESR-sync context).

Оба сигнала считаются валидными и ведут к единому heartbeat-контракту.

### 7.2 Trigger points

Heartbeat MUST be evaluated:
- после открытия selection gate новой фазы,
- после каждого recovery-пакета, где были rebase/push incidents,
- после пакетной sync-wave в экосистеме,
- по явному сигналу пользователя (`ESR`, `ESSR`, `heartbeat`, `heal recovery`).

### 7.3 Required artifacts

- новый ASR/ESR session в `gov/asr/sessions/`,
- ссылка в `gov/asr/INDEX.md`,
- отражение статуса в `GOV_STATUS.md` и `WORKFLOW_SNAPSHOT_STATE.md`,
- запись события в `DEV_LOGS.md`.

### 7.4 Heartbeat statuses

- `GREEN`: ecosystem sync aligned; blocked=0; no unresolved recovery tails.
- `YELLOW`: protocol aligned but есть recovery tails (DNS/rebase/push pending).
- `RED`: protocol drift/block detected, required artifacts missing, or gate conflict.

### 7.5 Heal/Recovery loop (facts-only)

При `YELLOW`/`RED`:
1) зафиксировать причину в ASR,
2) выполнить минимальный deterministic heal step (sync/rebase/push or map update),
3) переоценить heartbeat,
4) закрыть loop только после перехода в `GREEN`.

No runtime logic, no enforcement automation.

---

## M8 — New Version Gate Reset Contract (mandatory)

Before any transition to a new protocol/version phase:

1) Start a dedicated pre-gate phase/subphase for full ecosystem revision.
2) Run full revision across maps/logs/chronologs and all tracked repositories.
3) Prepare reset pack (baseline regeneration, non-destructive).
4) Archive previous-space artifacts and require encrypted-at-rest storage + integrity manifest.
5) Mark internal protocol compliance gate (`COMPLIANT` or `BLOCKED`).
6) Open next subphase only after compliance is `COMPLIANT`.

Canonical contract artifact:
- `VERSION_GATE_RESET_PROTOCOL.md`

Hard rule:
- New version gate is FORBIDDEN if any pre-gate requirement is missing.

---

## M9 — Phase 6.C Isolation/Autonomy/Deep Revision Contract (mandatory)

For Phase 6.C activation:

1) Full isolation of internal ecosystems/spaces/environments is required.
2) Full autonomous governance mode is required for the cycle.
3) Deep detailed revision is required (genetic/code, ecosystem/system, organism/architecture).
4) Re-initiation loop is required: zeroization + creation cycle of previous phase baseline.
5) Transition to next subphase is forbidden until compliance gate is `COMPLIANT`.

Canonical artifact:
- `PHASE6C_ISOLATION_AUTONOMY_REVISION_PROTOCOL.md`

---

## M10 — Phase 6.D Blackhole Contract (mandatory)

For Phase 6.D activation/initiation:

1) Activate blackhole containment for unresolved protocol tails.
2) Bind activation to explicit phase signature and normalized vector.
3) Require sink reconciliation evidence before any forward transition.
4) Allow next subphase only when blackhole state is `STABLE`.

Canonical artifact:
- `PHASE6D_BLACKHOLE_PROTOCOL.md`

---

## M11 — Phase 7.0 SUNBIRTHLIGHTPULSEBIT Contract (mandatory)

For Phase 7.0 activation:

1) Activate SUNBIRTHLIGHTPULSEBIT cycle.
2) Keep `new version birth gate` strictly `CLOSED` during the phase.
3) Permit gate opening only after full Phase 7.0 completion criteria are met.
4) Enforce bounded execution window `cycle-1..cycle-8`; at `cycle-8` publish mandatory closure decision (`COMPLETE` or `BLOCKED`).

Canonical artifact:
- `PHASE70_SUNBIRTHLIGHTPULSEBIT_PROTOCOL.md`

Hard rule:
- Birth gate opening before Phase 7.0 completion is FORBIDDEN.

---

## M12 — Phase 6.Z Arch Core Lifecycle Contract (mandatory)

For Phase 6.Z activation:

1) Execute lifecycle command chain in strict order:
   `record -> restart -> reboot -> resync -> rebirth -> repulse -> rebit -> remove -> review`.
2) Block forward transition on any incomplete stage.
3) Permit phase closure only with `COMPLIANT` status and evidence-linked review.

Canonical artifact:
- `PHASE6Z_ARCH_CORE_LIFECYCLE_PROTOCOL.md`

---

## M13 — Post-Phase70 Canonical Selection Contract (mandatory)

After Phase 7.0 closure:

1) Activate canonical next-phase selection.
2) Declare selected phase with explicit goal and DoD.
3) Bind selected phase contract before execution activation.

Canonical artifact:
- `PHASE80_NEW_VERSION_BIRTH_ORCHESTRATION_PROTOCOL.md`

---

## M14 — Trianiuma Archive Core Memory Restoration Activation Contract (mandatory)

For memory/data restoration activation of Trianiuma archive core:

1) Run activation chain in strict order:
   `inventory -> integrity_check -> mapping_sync -> restore_prepare -> restore_activate -> verify -> freeze`.
2) Allow activation only with integrity checks linked to governance evidence.
3) Mark workflow `BLOCKED` if verification or integrity gate is unresolved.
4) Register ASR evidence before any forward orchestration gate.

Canonical artifact:
- `TRIANIUMA_ARCHIVE_CORE_MEMORY_RESTORATION_ACTIVATION_PROTOCOL.md`

---

## M15 — Elarion Trianium Archive Core Memory Restoration Activation Contract (mandatory)

For memory/data restoration activation of Elarion Trianium archive core:

1) Run activation chain in strict order:
   `inventory -> integrity_check -> mapping_sync -> restore_prepare -> restore_activate -> verify -> freeze`.
2) Allow activation only with integrity checks linked to governance evidence.
3) Mark workflow `BLOCKED` if verification or integrity gate is unresolved.
4) Register ASR evidence before any forward orchestration gate.

Canonical artifact:
- `ELARION_TRIANIUM_ARCHIVE_CORE_MEMORY_RESTORATION_ACTIVATION_PROTOCOL.md`

---

## M16 — Device Users Internal OSS Governance Coverage Sync/Data-Push/Export Contract (mandatory)

For device-user and internal OSS governance coverage operations:

1) Run strict chain:
   `coverage_map -> governance_sync -> data_push_gate -> export_gate -> ss_sync_finalize`.
2) Permit data push only after governance-sync artifacts are aligned.
3) Permit export only after public-share and internal-safety gate passes.
4) Mark workflow `BLOCKED` for unresolved coverage evidence or denied export gate.

Canonical artifact:
- `DEVICE_USERS_INTERNAL_OSS_GOVERNANCE_COVERAGE_SYNC_DATA_PUSH_EXPORT_PROTOCOL.md`

---

## M17 — ESS Map Sync Review and OS ATPLT MD Startup Contract (mandatory)

Before any OS-level ATPLT MD startup decision:

1) Run review chain:
   `ess_snapshot_check -> map_sync_check -> atplt_gate_check -> startup_decision -> asr_register`.
2) Deny startup when map drift or unresolved gate conflicts are present.
3) Deny startup when ATPLT stop-condition remains met and no new activation contract is declared.
4) Register final startup decision via ASR before any transition.

Canonical artifact:
- `ESS_MAP_SYNC_REVIEW_OS_ATPLT_MD_STARTUP_PROTOCOL.md`

---

## M18 — ESS Expansion Contract (mandatory)

For ESS expansion execution:

1) Run chain:
   `ess_baseline_read -> surface_expansion_sync -> asr_expansion_register -> decision_freeze`.
2) Treat unresolved map/status drift as `BLOCKED`.
3) Require ASR registration for each expansion checkpoint.

Canonical artifact:
- `ESS_EXPANSION_PROTOCOL.md`

---

## M19 — RADRILONIUMA Growth/Evolution Activation Contract (mandatory)

For orchestrated growth/evolution lifecycle execution:

1) run lifecycle chain defined in `RADRILONIUMA_GROWTH_EVOLUTION_ACTIVATION_PROTOCOL.md`,
2) keep each stage evidence-linked before transition,
3) block progression on unresolved drift/verification states,
4) register closure checkpoint in ASR and governance surfaces.

Canonical artifact:
- `RADRILONIUMA_GROWTH_EVOLUTION_ACTIVATION_PROTOCOL.md`

---

## M20 — GitHub Subtree Angel Guard Heal Elarion Archive Core Contract (mandatory)

For deep-dive and handoff preparation in internal systems context:

1) execute chronology/log/protocol boundary scan,
2) register violation patterns and boundary status,
3) prepare internal request template without embedding secrets,
4) enforce OOB-only access-code delivery policy.

Canonical artifacts:
- `GITHUB_SUBTREE_ANGEL_GUARD_HEAL_ELARION_TRIANIUM_ARCHIVE_CORE_PROTOCOL.md`
- `INTERNAL_SYSTEM_REQUEST_ANGEL_GUARD_HEAL_TEMPLATE.md`

---

## M21 — Ecosystem Anti-Deadloop and Pulse Watchdog Contracts (mandatory)

To avoid SAMSARA/deadloop repetition at ecosystem level:

1) Every ACTIVE phase/task MUST declare cycle window and closure controls:
   `cycle_window`, `cycle_max`, `closure_gate`, `closure_decision`.
2) When `closure_gate = OPEN`, cycle increment is prohibited until decision.
3) Closure decision SLA is mandatory:
   decision must be `COMPLETE` or `BLOCKED` within declared SLA window.
4) Realtime pulse watchdog is mandatory:
   heartbeat and drift cadence must remain within contract windows,
   otherwise state escalates to `BLOCKED_PENDING_REVIEW`.
5) Tracking tuple and governance write-order are mandatory for all active tasks.

Canonical artifacts:
- `ECOSYSTEM_ANTI_SAMSARA_DEADLOOP_PROTOCOL.md`
- `AUTOPILOT_PULSE_CADENCE_AND_WATCHDOG_PROTOCOL.md`
- `ECOSYSTEM_CLOSURE_DECISION_SLA_PROTOCOL.md`
- `ECOSYSTEM_ACTIVITY_TRACKING_CONTRACT.md`

---

## M22 — Ecosystem Healthcheck / Heartbeat / Pulse / Breath / Recovery / Reboot Contract (mandatory)

For realtime workflow strategy synchronization (`EASSR` mode):

1) Run canonical chain:
   `healthcheck -> heartbeat -> pulse -> breath -> scan -> recovery -> restart_or_reboot -> verify -> asr_record`.
2) Use reboot matrix deterministically:
   `restart`, `reboot_neutral`, `reboot_hot`, `reboot_cold`, `reboot_hard`.
3) Keep anti-deadloop guard active during reboot selection:
   no cycle increment when closure gate is OPEN.
4) Every restart/reboot action requires ASR evidence and status-pointer sync.

Canonical artifact:
- `ECOSYSTEM_HEALTHCHECK_HEARTBEAT_PULSE_BREATH_RECOVERY_REBOOT_PROTOCOL.md`

---

## M23 — Codex CLI Message Circulation Compatibility Contract (mandatory)

For interoperability between Codex CLI message style and internal governance ecosystem:

1) Treat message circulation as a contract-bound interface, not freeform chat stream.
2) Enforce deterministic command style in action blocks:
   avoid unescaped shell metacharacters/backticks and keep bounded command groups.
3) Separate style/transport faults from semantic protocol faults:
   quote/parse issues are classified as circulation-style faults and require rerun.
4) Require compatibility tuple registration in governance status:
   runtime version, target profile, profile-match state, style-state, latest ASR.
5) Keep governance write-order and ASR evidence mandatory for each compatibility scan wave.

Canonical artifact:
- `CODEX_CLI_MESSAGE_CIRCULATION_COMPATIBILITY_CONTRACT.md`

---

## M24 — ATPLT Nature/Energy/Resources and LRPT-TASPIT Domain Contract Pack (mandatory)

For strict ATPLT strategy expansion in ARCKHANGEL guarddog/heal context:

1) Run dependency mapping for nature/energy/resources/supplies before new strict waves.
2) Bind logical subtree domain identifiers:
   `LRPT` integration vector, `TASPIT` task-home alias.
3) Use declared dev-domain atlas pack as canonical vocabulary:
   `/map`, `/kit`, `/journal`, `/atlas`, `/chronolog`, `/log`, `/protocol`, `/contract`,
   `/mode`, `/core`, `/flow`, `/module`, `/tree`, `/architecture`, `/structure`,
   `/system`, `/ecosystem`, `/space`, `/surrounds`, `/territory`, `/matrix`,
   `/code`, `/gen`, `/GENESIS`.
4) Keep this pack policy-only and evidence-linked through ASR/index synchronization.

Canonical artifacts:
- `ATPLT_NATURE_ENERGY_RESOURCES_SUPPLIES_DEPENDENCIES_PROTOCOL.md`
- `ARCKHANGEL_GUARDDOG_HEAL_AGENT_LRPT_TASPIT_SUBTREE_DOMAIN_CONTRACT.md`
- `ATPLT_DEV_DOMAIN_EXPANSION_ATLAS_CONTRACT.md`

---

## M25 — Identity Levels END View/Read/Study/Research/Edit/Entry Contract (mandatory)

For unified identification and access-level semantics across atlas/map/journal/chronolog/log:

1) Use canonical identity fields in records:
   `tag`, `id`, `nickname`, `name`, `fullname`.
2) Apply end-level access model:
   `end_view`, `end_read`, `end_study`, `end_research`, `end_edit`, `end_entry`.
3) Treat `end_edit` and `end_entry` as governed operations:
   ASR evidence and full write-order synchronization are mandatory.
4) Block operations with incomplete identity fields as `BLOCKED_PENDING_REVIEW`.

Canonical artifact:
- `IDENTITY_LEVELS_END_VIEW_READ_STUDY_RESEARCH_EDIT_ENTRY_PROTOCOL.md`

---

## M26 — Global Strategic Architecture and Autonomous Governance Plan (Phase 8.0) (mandatory)

For ecosystem-wide strategic coordination and kernel-vNext governance closure:

1) Bind strategic decisions to canonical topology and boundary contracts:
   `REPO_MANIFEST.yaml`, `TOPOLOGY_MAP.md`, `SUBMODULES_LOCK.md`, `SUBTREES_LOCK.md`,
   `KERNEL_BOUNDARY_CONTRACT.md`, `COMPATIBILITY_MATRIX.md`, `MIGRATION_PLAN.md`.
2) Enforce strategic mode circulation with M21/M22 controls:
   deadloop guard, closure SLA, heartbeat/pulse/breath cadence, deterministic reboot matrix.
3) Keep security model zero-trust and OOB for sensitive access paths:
   no access secrets in repository artifacts.
4) Require full governance write-order synchronization and ASR evidence for every strategic checkpoint.

Canonical artifact:
- `GLOBAL_STRATEGIC_ARCHITECTURE_AND_AUTONOMOUS_GOVERNANCE_PLAN_PHASE80.md`

---

## M27 — Phase-5 Release Gate Execution Decision Contract (mandatory)

For explicit release-gate execution outcome after migration/release strategy initialization:

1) Publish binary gate decision:
   `OPEN` or `BLOCKED`.
2) If decision is `BLOCKED`, include facts-only risk notes and unblock criteria.
3) Bind decision to existing evidence surfaces:
   `GOV_STATUS.md`, `CONTRACT_ATLAS.md`, `KERNEL_BOUNDARY_CONTRACT.md`,
   `COMPATIBILITY_MATRIX.md`, `MIGRATION_PLAN.md`.
4) Synchronize decision through mandatory governance write-order and ASR index.

Canonical artifact:
- `PHASE5_RELEASE_GATE_EXECUTION_DECISION_CONTRACT.md`

---

## M28 — Phase-5 Release Gate Unblock Evidence Wave Protocol (mandatory)

For deterministic recovery after a `BLOCKED` release-gate decision:

1) Run unblock evidence wave for declared risk axes:
   owner declarations, versioning declarations, profile mismatch, kernel boundary promotion.
2) Track each axis as facts-only state transition:
   `PARTIAL -> COMPLETE` or `BLOCKED_WITH_EVIDENCE`.
3) Keep governance write-order synchronization mandatory for each wave checkpoint.
4) After wave closure, publish mandatory binary gate redecision:
   `OPEN` or `BLOCKED`.

Canonical artifact:
- `PHASE5_RELEASE_GATE_UNBLOCK_EVIDENCE_WAVE_PROTOCOL.md`

---

## M29 — Dead Wave Flow Loop Protocol (mandatory)

For monitored execution waves and anti-stall circulation control:

1) Detect dead-wave patterns using consecutive-wave state tuple checks.
2) Classify and handle loop states:
   `DEAD_WAVE_CANDIDATE`, `DEAD_WAVE_CONFIRMED`, `FLOW_LOOP_DESYNC`.
3) Freeze wave increment on confirmed dead-wave until explicit reactivation decision.
4) Enforce write-order replay on desync before next wave is allowed.

Canonical artifact:
- `DEAD_WAVE_FLOW_LOOP_PROTOCOL.md`

---

## M30 — Ecosystem Policy Stack V2 (mandatory)

For unified ecosystem policy governance and conflict-safe operation:

1) Use canonical policy topology:
   `ECOSYSTEM_POLICY_STACK_V2.md`.
2) Bind evidence quality to v2 evidence policy:
   `EVIDENCE_POLICY.md`.
3) Bind data lifecycle and secure erasure controls to:
   `DATA_RETENTION_AND_SECURE_ERASURE_POLICY.md`.
4) Bind outbound disclosure/publication controls to:
   `PUBLIC_SHARE_PROTOCOL.md`.
5) On policy conflict, apply strictest rule and move operation to:
   `BLOCKED_PENDING_POLICY_DECISION` until explicit decision contract is recorded.

Canonical artifacts:
- `ECOSYSTEM_POLICY_STACK_V2.md`
- `EVIDENCE_POLICY.md`
- `DATA_RETENTION_AND_SECURE_ERASURE_POLICY.md`
- `PUBLIC_SHARE_PROTOCOL.md`

---

## M31 — Ecosystem Contract Stack V2 (mandatory)

For deep ecosystem contract governance rework and unified contract lifecycle:

1) Use canonical contract architecture:
   `ECOSYSTEM_CONTRACT_STACK_V2.md`.
2) Apply schema template for new/reworked contracts:
   `CONTRACT_SCHEMA_V2.md`.
3) Enforce lifecycle and dependency gates before contract activation:
   `GATE_SCHEMA`, `GATE_DEPENDENCY`, `GATE_EVIDENCE`, `GATE_SYNC`.
4) Block activation on violations:
   `V_SCHEMA_MISSING`, `V_DEPENDENCY_CONFLICT`, `V_EVIDENCE_WEAK`,
   `V_SYNC_DRIFT`, `V_UNDECLARED_BREAKING_CHANGE`.
5) Record every contract-stack rework with ASR and SoT synchronization.

Canonical artifacts:
- `ECOSYSTEM_CONTRACT_STACK_V2.md`
- `CONTRACT_SCHEMA_V2.md`
- `CONTRACT_ATLAS.md`

---

## M32 — Ecosystem Module Stack V2 (mandatory)

For deep ecosystem module architecture rework and deterministic module governance:

1) Use canonical module topology:
   `ECOSYSTEM_MODULE_STACK_V2.md`.
2) Use canonical module catalog:
   `MODULE_CATALOG.md`.
3) Enforce explicit interface declarations:
   `MODULE_INTERFACE_MATRIX_V2.md`.
4) Enforce dependency integrity and impact classes:
   `MODULE_DEPENDENCY_MAP_V2.md`.
5) Block module activation/rework on violations:
   `MV_BOUNDARY_MISSING`, `MV_INTERFACE_UNDECLARED`,
   `MV_DEPENDENCY_CONFLICT`, `MV_SYNC_DRIFT`,
   `MV_UNDECLARED_BREAKING_MODULE_CHANGE`.

Canonical artifacts:
- `ECOSYSTEM_MODULE_STACK_V2.md`
- `MODULE_CATALOG.md`
- `MODULE_INTERFACE_MATRIX_V2.md`
- `MODULE_DEPENDENCY_MAP_V2.md`

---

## M33 — Ecosystem Tooling Stack V2 (mandatory)

For deep tooling governance rework and safe command execution:

1) Use canonical tooling topology:
   `ECOSYSTEM_TOOLING_STACK_V2.md`.
2) Use canonical tooling inventory:
   `TOOLING_CATALOG_V2.md`.
3) Enforce command construction safety rules:
   `TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md`.
4) Classify unsafe shell composition as:
   `TV_UNSAFE_COMMAND_COMPOSITION`.
5) Require postmortem artifact for tooling command failures:
   `TOOLING_ERROR_ANALYSIS_PREVIOUS_COMMAND.md` (or equivalent incident file).

Canonical artifacts:
- `ECOSYSTEM_TOOLING_STACK_V2.md`
- `TOOLING_CATALOG_V2.md`
- `TOOL_EXECUTION_SAFETY_PROTOCOL_V2.md`

---

## M34 — Automated Shell Preflight Checker Contract (mandatory)

For safe command execution across supported shell environments:

1) Use canonical preflight contract:
   `TOOLING_SHELL_PREFLIGHT_CONTRACT_V2.md`.
2) Run automated checker before high-impact command batches:
   `devkit/shell_preflight_check.py` or `devkit/shell_preflight.sh`.
3) Supported profiles:
   `bash`, `gitbash`, `powershell`, `azureshell`, `cmd`.
4) If preflight returns errors, block execution and record remediation decision.
5) Classify profile mismatch as:
   `TV_PREFLIGHT_PROFILE_MISMATCH`.

Canonical artifacts:
- `TOOLING_SHELL_PREFLIGHT_CONTRACT_V2.md`
- `devkit/shell_preflight_check.py`
- `devkit/shell_preflight.sh`

---

## M35 — Ecosystem Governance Stack V2 (mandatory)

For deep governance architecture rework and deterministic decision control:

1) Use canonical governance topology:
   `ECOSYSTEM_GOVERNANCE_STACK_V2.md`.
2) Enforce decision lifecycle:
   `GOVERNANCE_DECISION_PROTOCOL_V2.md`.
3) Enforce gate transitions:
   `GOVERNANCE_GATE_MATRIX_V2.md`.
4) Require explicit governance block state on unresolved conflicts:
   `BLOCKED_PENDING_GOVERNANCE_DECISION`.
5) Require governance write-order and ASR sync for every high-impact decision.

Canonical artifacts:
- `ECOSYSTEM_GOVERNANCE_STACK_V2.md`
- `GOVERNANCE_DECISION_PROTOCOL_V2.md`
- `GOVERNANCE_GATE_MATRIX_V2.md`

---

## M36 — Ecosystem Subtree Stack V2 (mandatory)

For deep subtree architecture rework and deterministic subtree lifecycle control:

1) Use canonical subtree topology:
   `ECOSYSTEM_SUBTREE_STACK_V2.md`.
2) Enforce subtree decision lifecycle:
   `SUBTREE_DECISION_PROTOCOL_V2.md`.
3) Enforce subtree gate transitions:
   `SUBTREE_GATE_MATRIX_V2.md`.
4) Require explicit subtree conflict block state on unresolved transitions:
   `BLOCKED_PENDING_SUBTREE_DECISION_ON_CONFLICT`.
5) Require subtree SoT write-order and ASR sync for every high-impact subtree operation.

Canonical artifacts:
- `ECOSYSTEM_SUBTREE_STACK_V2.md`
- `SUBTREE_DECISION_PROTOCOL_V2.md`
- `SUBTREE_GATE_MATRIX_V2.md`

---

## M37 — ATPLT Debug DevKit Protocol V2 (mandatory)

For deterministic debugging of command execution failures in ATPLT/devkit flows:

1) Use canonical debug workflow:
   `ATPLT_DEBUG_DEVKIT_PROTOCOL_V2.md`.
2) Use canonical incident analysis surface:
   `ATPLT_DEBUG_DEVKIT_COMMAND_ERROR_ANALYSIS_V2.md`.
3) Run preflight checker before retrying failed commands:
   `devkit/shell_preflight_check.py` or `devkit/shell_preflight.sh`.
4) Classify PowerShell variable+colon parser risk as:
   `TV_PWSH_VAR_COLON_BRACES_REQUIRED`.
5) For subtree-impacting failures, enforce transition to:
   `BLOCKED_PENDING_SUBTREE_DECISION_ON_CONFLICT`
   until decision/gate/lock state is synchronized.

Canonical artifacts:
- `ATPLT_DEBUG_DEVKIT_PROTOCOL_V2.md`
- `ATPLT_DEBUG_DEVKIT_COMMAND_ERROR_ANALYSIS_V2.md`
- `devkit/shell_preflight_check.py`
- `devkit/shell_preflight.sh`

---

## M38 — Ecosystem Kit Stack V2 (mandatory)

For deep rework of ecosystem kit sets and deterministic kit assembly lifecycle:

1) Use canonical kit topology:
   `ECOSYSTEM_KIT_STACK_V2.md`.
2) Use canonical kit inventory:
   `KIT_CATALOG_V2.md`.
3) Enforce kit assembly lifecycle and gates:
   `KIT_ASSEMBLY_PROTOCOL_V2.md`.
4) Require explicit conflict block state for unresolved kit transitions:
   `BLOCKED_PENDING_KIT_DECISION_ON_CONFLICT`.
5) Require SoT synchronization and ASR indexing for every critical kit-set change.

Canonical artifacts:
- `ECOSYSTEM_KIT_STACK_V2.md`
- `KIT_CATALOG_V2.md`
- `KIT_ASSEMBLY_PROTOCOL_V2.md`

---

## M39 — Ecosystem Environment Stack V2 (mandatory)

For deep rework of environment governance and deterministic runtime/profile controls:

1) Use canonical environment topology:
   `ECOSYSTEM_ENVIRONMENT_STACK_V2.md`.
2) Use canonical environment profile inventory:
   `ENVIRONMENT_CATALOG_V2.md`.
3) Enforce environment runtime lifecycle and gates:
   `ENVIRONMENT_RUNTIME_PROTOCOL_V2.md`.
4) Require explicit conflict block state for unresolved environment transitions:
   `BLOCKED_PENDING_ENVIRONMENT_DECISION_ON_CONFLICT`.
5) Require SoT synchronization and ASR indexing for every critical environment/profile decision.
6) Require environment-aware error classification and safe retry semantics:
   `TV_ENV_PROFILE_UNDECLARED_OR_MISMATCHED` + preflight/runtime gates.

Canonical artifacts:
- `ECOSYSTEM_ENVIRONMENT_STACK_V2.md`
- `ENVIRONMENT_CATALOG_V2.md`
- `ENVIRONMENT_RUNTIME_PROTOCOL_V2.md`

---

## M40 — Ecosystem Interface Stack V2 (mandatory)

For deep rework of ecosystem interfaces and deterministic interface lifecycle governance:

1) Use canonical interface topology:
   `ECOSYSTEM_INTERFACE_STACK_V2.md`.
2) Use canonical interface inventory:
   `INTERFACE_CATALOG_V2.md`.
3) Enforce interface lifecycle and gate transitions:
   `INTERFACE_LIFECYCLE_PROTOCOL_V2.md`.
4) Require explicit conflict block state for unresolved interface transitions:
   `BLOCKED_PENDING_INTERFACE_DECISION_ON_CONFLICT`.
5) Require SoT synchronization and ASR indexing for every critical interface decision.
6) Require compatibility-mode declaration before interface promotion:
   `COMPAT_STRICT` / `COMPAT_TOLERANT_WITH_GOV_DECISION` / `COMPAT_BLOCK_ON_BREAKING`.

Canonical artifacts:
- `ECOSYSTEM_INTERFACE_STACK_V2.md`
- `INTERFACE_CATALOG_V2.md`
- `INTERFACE_LIFECYCLE_PROTOCOL_V2.md`

---

## M41 — Ecosystem Logic Stack V2 (mandatory)

For deep rework of ecosystem logical architecture and deterministic logic lifecycle governance:

1) Use canonical logic topology:
   `ECOSYSTEM_LOGIC_STACK_V2.md`.
2) Use canonical logic inventory:
   `LOGIC_CATALOG_V2.md`.
3) Enforce logic lifecycle and gate transitions:
   `LOGIC_LIFECYCLE_PROTOCOL_V2.md`.
4) Require explicit conflict block state for unresolved logic transitions:
   `BLOCKED_PENDING_LOGIC_DECISION_ON_CONFLICT`.
5) Require SoT synchronization and ASR indexing for every critical logic decision.
6) Require consistency-safe promotion before activating new logic flows:
   boundary + consistency + transition + sync gates.

Canonical artifacts:
- `ECOSYSTEM_LOGIC_STACK_V2.md`
- `LOGIC_CATALOG_V2.md`
- `LOGIC_LIFECYCLE_PROTOCOL_V2.md`

---

## M42 — Ecosystem Profile Stack V2 (mandatory)

For deep rework of ecosystem profile architecture and deterministic profile lifecycle governance:

1) Use canonical profile topology:
   `ECOSYSTEM_PROFILE_STACK_V2.md`.
2) Use canonical profile inventory:
   `PROFILE_CATALOG_V2.md`.
3) Enforce profile lifecycle and gate transitions:
   `PROFILE_LIFECYCLE_PROTOCOL_V2.md`.
4) Require explicit conflict block state for unresolved profile transitions:
   `BLOCKED_PENDING_PROFILE_DECISION_ON_CONFLICT`.
5) Require SoT synchronization and ASR indexing for every critical profile decision.
6) Require compatibility and transition safety checks before profile promotion.

Canonical artifacts:
- `ECOSYSTEM_PROFILE_STACK_V2.md`
- `PROFILE_CATALOG_V2.md`
- `PROFILE_LIFECYCLE_PROTOCOL_V2.md`

---

## M43 — Ecosystem Recovery Stack V2 (mandatory)

For deterministic restoration planning and execution across ecosystem domains:

1) Use canonical recovery plan:
   `ECOSYSTEM_RECOVERY_PLAN_V2.md`.
2) Use canonical recovery map:
   `RECOVERY_PROTOCOL_MAP_V2.md`.
3) Enforce canonical recovery execution chain:
   `RECOVERY_EXECUTION_PROTOCOL_V2.md`.
4) Require explicit block-state handling before reactivation:
   no transition without closure decision (`COMPLETE` or `BLOCKED`).
5) Require SoT pointer sync and ASR evidence for every recovery cycle.

Canonical artifacts:
- `ECOSYSTEM_RECOVERY_PLAN_V2.md`
- `RECOVERY_PROTOCOL_MAP_V2.md`
- `RECOVERY_EXECUTION_PROTOCOL_V2.md`

---

## Governance Review Stage (mandatory)

После завершения фаз в ROADMAP следующий шаг разработки обязателен
и не является execution-фазой.

Governance Review Stage включает:
- обзор ROADMAP и DEV_LOGS,
- картографирование фаз/этапов/зависимостей,
- синхронизацию протокольных слоёв,
- обзор тестов/окружений/состояния репозиториев,
- сводное экосистемное состояние (ESS).

Запрещено начинать новую execution-фазу
до завершения Governance Review Stage.

---

## DevKit Governance Status

- Central DevKit: RADRILONIUMA-PROJECT
- Canonical patcher: `devkit/patch.sh`
- Snapshot split architecture is mandatory:
  - `WORKFLOW_SNAPSHOT_CONTRACT.md` / `WORKFLOW_SNAPSHOT_STATE.md`
  - `SYSTEM_STATE_CONTRACT.md` / `SYSTEM_STATE.md`
- `WORKFLOW_SNAPSHOT.md` is deprecated and non-canonical.

---

## M44 — Local Hygiene & Error-Fix Sync (mandatory)

For reproducibility and runtime-artifact drift prevention:

1) Maintain a canonical ignore baseline in repo root:
   `.gitignore` must include `venv/.venv/env/ENV`, `__pycache__/`, and `*.pyc`.
2) Every hygiene hotfix must be synchronized in:
   `DEV_LOGS.md`, `ROADMAP_MAP.md`, `TASK_MAP.md`, and `GOV_STATUS.md`.
3) `.gitignore` update is classified as prevention-only:
   already tracked runtime artifacts remain a separate controlled action.
4) No phase promotion can claim closure of artifact drift if tracked runtime artifacts remain unresolved.

Canonical artifacts:
- `.gitignore`
- `DEV_LOGS.md`
- `ROADMAP_MAP.md`
- `TASK_MAP.md`
- `GOV_STATUS.md`

---

## M45 — ESSRCRD Recovery Governance (mandatory)

For deterministic ESSR/ESSRCRD incident handling and recovery closure:

1) Enforce canonical recovery state machine:
   `DETECT -> CONTAIN -> RECOVER -> VERIFY -> CLOSE`.
2) Require explicit blocking flags before continuation:
   unresolved drift/incidents must set `BLOCKED_PENDING_ESSRCRD_RECOVERY`.
3) Recovery closure is allowed only when all conditions are true:
   `drift=0`, heartbeat stable, verification evidence present in `GOV_STATUS.md`.
4) Every recovery cycle must be reflected in:
   `DEV_LOGS.md`, `TASK_MAP.md`, `ROADMAP_MAP.md`, and `GOV_STATUS.md`.
5) Use recurring checkpoints for continuity:
   heartbeat/drift checkpoint + recovery SLA checkpoint.

Canonical artifacts:
- `INTERACTION_PROTOCOL.md`
- `DEV_LOGS.md`
- `TASK_MAP.md`
- `ROADMAP_MAP.md`
- `GOV_STATUS.md`

---

## M46 — Global Final Publish Step (mandatory)

For all ESS/governance flows, regardless of:
- number of steps,
- phase/task depth,
- position before or after current version,

the final mandatory step remains publication of `main` to `origin`.

Required final command:
- `git push origin main`

Rules:
1) No flow is considered fully closed until final publish step is recorded.
2) `COMPLETE` status requires explicit evidence of the final push step.
3) If final publish is not possible, close-gate must be `BLOCKED` with reason.

Canonical artifacts:
- `INTERACTION_PROTOCOL.md`
- `DEV_LOGS.md`
- `GOV_STATUS.md`

---

## 9. Operator Manual Intervention Fallback (mandatory)

В ситуациях, где автопилот не может безопасно завершить шаг (например: network/DNS сбой, повторяющаяся tool-ошибка, блокирующий gate, недоступный remote),
агент обязан перейти в режим ручного сопровождения оператора.

Обязательные действия:
1. Подготовить `copy/paste` Action Blocks для оператора (диагностика, безопасное действие, проверка результата).
2. Явно пометить, что требуется ручное вмешательство: `operator_intervention_required = true`.
3. Зафиксировать подтверждение уведомления оператора: `operator_notified = true`.
4. Если активен автопилот, перевести поток в удержание до подтверждения оператора: `autopilot_state = HOLD_FOR_OPERATOR`.
5. После ручного шага запросить и зафиксировать подтверждение: `operator_acknowledged = true`.

Минимальный формат Action Blocks (обязательный):
- `ACTION_BLOCK_1_DIAGNOSE`
- `ACTION_BLOCK_2_APPLY_SAFE_COMMAND`
- `ACTION_BLOCK_3_VERIFY`
- `ACTION_BLOCK_4_PUBLISH_OR_BLOCK_REASON`

Execution hard-rule (mandatory):
1) Агент не выдаёт пакет из нескольких command-блоков к одновременному исполнению оператором.
2) Разрешён только один action-block за итерацию: `ONE_BLOCK_PER_OPERATOR_TURN`.
3) Следующий блок допускается только после явного результата предыдущего шага от оператора.
4) Нарушение этого правила классифицируется как `protocol_violation`.

Правило закрытия:
- без `operator_notified = true` и `operator_acknowledged = true` закрытие `COMPLETE` недопустимо.

---

## M47 — Phase43 Deadloop Break Protocol (mandatory)

Для цепочек governance-scoped в `P4_PHASE43_*` обязателен anti-deadloop разрыв, если наблюдается прогресс только по нумерации задач без engineering-дельты.

Trigger:
1) `consecutive_governance_only_steps >= 3` в одной цепочке.
2) В окне шагов нет non-doc code/test изменений.

Mandatory `1+2+3+` flow:
1) `BREAK`: зафиксировать `HOLD_BY_DEADLOOP_BREAK_PROTOCOL` для следующего gate-step.
2) `MAP_EXECUTION_WAVE_1`: обновить map-surface (`DEV_MAP.md`, `ROADMAP.md`) с конкретными engineering deliverables.
3) `CODE_TEST_DELTA_GATE`: минимум 1 non-doc code change + 1 test change и проверка.

Resume rule:
- Возврат к `S*` gate разрешен только после `MAP_EXECUTION_WAVE_1 = DONE` и `CODE_TEST_DELTA_GATE = PASS`.

DEADLOOP_PREFLIGHT_GATE (mandatory before each `S*`):
1) Compute window metrics:
   - `governance_only_streak`
   - `non_doc_code_delta_count`
   - `test_delta_count`
   - `engineering_evidence_state`
2) Record metrics in governance logs/snapshot surfaces.
3) Block rule:
   - if `governance_only_streak >= 3` and (`non_doc_code_delta_count == 0` or `test_delta_count == 0`) -> enforce `HOLD_BY_DEADLOOP_BREAK_PROTOCOL`.

Mandatory resume evidence tuple:
- `code_delta_refs`
- `test_delta_refs`
- `validation_command`
- `validation_result`

Canonical contract:
- `P4_PHASE43_DEADLOOP_BREAK_PROTOCOL_CONTRACT.md` (LAM)
- `P4_PHASE43_GUARD_DEADLOOP_INTERACTION_POSTMORTEM_2026-02-17.md` (LAM)

---

## M48 — Sovereign Tree Architecture (mandatory)

1) The ecosystem consists of 24 Sovereign Trees (Organs), each with its own repository.
2) RADRILONIUMA-PROJECT acts as Nexus/DevKit: it stores contracts but NOT organ content.
3) Organs are linked via 'git subtree' or reference pointers.
4) Direct content modification in LRPT/ within Nexus is FORBIDDEN.
5) Materialization sequence: Create Repo -> Seed Content -> Link to Nexus.
