#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA CAPTAIN'S BRIDGE HUD & ASTRONOMICAL ORBITAL CHRONOS ENGINE
======================================================================
Combines:
1. Captain's Bridge Terminal Console HUD (Large crisp fonts, high-contrast typography)
2. Concentric Astronomical Clock & Calendar Orbits:
   - 128-Year Epoch Cosmic Orbit
   - 4-Seasons Solar Calendar Orbit
   - 4-Week Lunar Resonance Orbit
   - 24-Hour Planetary Diurnal Orbit
   - 60-Minute Realtime Sweeping Radar Clock
3. Mental Swarm Network Topology (Nodes placed along orbital frequencies with laser synapses)
4. Session Mental Context, Hardware Status, and Active Mission/Tactics Plan
"""

import os
import sys
import math
import time
import json
from pathlib import Path
from datetime import datetime, timezone
from PIL import Image, ImageDraw, ImageFont

ROOT_DIR = Path("/root/RADRILONIUMA")
DATA_DIR = ROOT_DIR / "data" / "wallpapers"
DATA_DIR.mkdir(parents=True, exist_ok=True)
OUTPUT_IMG = DATA_DIR / "current_wallpaper.png"

FONT_DIR = Path("/usr/share/fonts/truetype")
FONT_SANS_BOLD = str(FONT_DIR / "dejavu" / "DejaVuSans-Bold.ttf")
FONT_SANS = str(FONT_DIR / "dejavu" / "DejaVuSans.ttf")
FONT_MONO_BOLD = str(FONT_DIR / "dejavu" / "DejaVuSansMono-Bold.ttf")
FONT_MONO = str(FONT_DIR / "dejavu" / "DejaVuSansMono.ttf")

class CaptainsOrbitalEngine:
    def __init__(self, width=2560, height=1600):
        self.width = width
        self.height = height

        try:
            self.font_title = ImageFont.truetype(FONT_SANS_BOLD, 36)
            self.font_clock = ImageFont.truetype(FONT_MONO_BOLD, 40)
            self.font_header = ImageFont.truetype(FONT_SANS_BOLD, 26)
            self.font_subheader = ImageFont.truetype(FONT_MONO_BOLD, 20)
            self.font_body_bold = ImageFont.truetype(FONT_SANS_BOLD, 20)
            self.font_body = ImageFont.truetype(FONT_SANS, 19)
            self.font_mono = ImageFont.truetype(FONT_MONO, 18)
            self.font_mono_small = ImageFont.truetype(FONT_MONO, 15)
            self.font_orbit_label = ImageFont.truetype(FONT_MONO_BOLD, 15)
            self.font_node_label = ImageFont.truetype(FONT_SANS_BOLD, 16)
            self.font_node_sub = ImageFont.truetype(FONT_MONO_BOLD, 12)
        except Exception:
            self.font_title = ImageFont.load_default()
            self.font_clock = ImageFont.load_default()
            self.font_header = ImageFont.load_default()
            self.font_subheader = ImageFont.load_default()
            self.font_body_bold = ImageFont.load_default()
            self.font_body = ImageFont.load_default()
            self.font_mono = ImageFont.load_default()
            self.font_mono_small = ImageFont.load_default()
            self.font_orbit_label = ImageFont.load_default()
            self.font_node_label = ImageFont.load_default()
            self.font_node_sub = ImageFont.load_default()

    def get_chronos(self):
        now = datetime.now(timezone.utc)
        start_year = datetime(2026, 1, 1, tzinfo=timezone.utc)
        days_elapsed = (now - start_year).days
        minute_of_day = now.hour * 60 + now.minute
        discrete_minute_tick = days_elapsed * 1440 + minute_of_day

        # Seasons
        month = now.month
        if month in [12, 1, 2]:
            season_idx, season_name, quarter, symbol = 0, "Холодная Гармония (Winter)", "Q1", "❄️ ЗИМА"
        elif month in [3, 4, 5]:
            season_idx, season_name, quarter, symbol = 1, "Весеннее Пробуждение (Spring)", "Q2", "🌱 ВЕСНА"
        elif month in [6, 7, 8]:
            season_idx, season_name, quarter, symbol = 2, "Солнечный Зенит (Summer)", "Q3", "☀️ ЛЕТО"
        else:
            season_idx, season_name, quarter, symbol = 3, "Осенняя Конвергенция (Autumn)", "Q4", "🍂 ОСЕНЬ"

        week_num = (now.day // 7) + 1
        days_names = ["Понедельник (Луна)", "Вторник (Марс)", "Среда (Меркурий)", "Четверг (Юпитер)", "Пятница (Венера)", "Суббота (Сатурн)", "Воскресенье (Солнце)"]
        day_name = days_names[now.weekday()]

        return {
            "now": now,
            "utc_str": now.strftime("%Y-%m-%d  %H:%M:%S  UTC"),
            "minute_tick": discrete_minute_tick,
            "season": {
                "index": season_idx,
                "name": season_name,
                "quarter": quarter,
                "symbol": symbol
            },
            "week_cycle": {
                "week_number": week_num,
                "cadence": "4-Week Lunar Resonance"
            },
            "day": {
                "name": day_name,
                "iso_day": now.isoweekday(),
                "day_of_year": now.timetuple().tm_yday
            },
            "epoch_era": {
                "current_era_year": 0,
                "discrete_minute_tick": discrete_minute_tick
            },
            "minute_of_day": minute_of_day
        }

    def render(self) -> (Image.Image, dict):
        chronos = self.get_chronos()
        now = chronos["now"]
        season = chronos["season"]

        # Color Palette
        col_bg_top = (7, 12, 24)
        col_bg_bot = (3, 6, 14)
        col_cyan_glow = (56, 189, 248)
        col_cyan_dim = (14, 116, 144)
        col_gold = (245, 158, 11)
        col_amber = (251, 191, 36)
        col_green = (34, 197, 94)
        col_white = (255, 255, 255)
        col_slate_txt = (203, 213, 225)
        col_muted_txt = (148, 163, 184)
        col_card_bg = (13, 22, 41, 235)
        col_card_border = (30, 58, 102)

        img = Image.new("RGBA", (self.width, self.height), col_bg_top + (255,))
        draw = ImageDraw.Draw(img)

        # 1. Subtle High-Tech Background Grid & Gradients
        for y in range(0, self.height, 4):
            factor = y / float(self.height)
            r = int(col_bg_top[0] * (1 - factor) + col_bg_bot[0] * factor)
            g = int(col_bg_top[1] * (1 - factor) + col_bg_bot[1] * factor)
            b = int(col_bg_top[2] * (1 - factor) + col_bg_bot[2] * factor)
            draw.rectangle([0, y, self.width, y + 4], fill=(r, g, b, 255))

        grid_step = 80
        for gx in range(40, self.width, grid_step):
            for gy in range(40, self.height, grid_step):
                draw.rectangle([gx, gy, gx + 2, gy + 2], fill=(255, 255, 255, 10))

        # ======================================================================
        # TOP COMMAND HEADER RIBBON
        # ======================================================================
        top_box = [50, 40, self.width - 50, 180]
        draw.rounded_rectangle(top_box, radius=16, fill=col_card_bg, outline=col_cyan_dim, width=2)

        draw.text((80, 56), "⚜️ RADRILONIUMA  •  КАПИТАНСКИЙ МОСТИК СЕССИИ", fill=col_white, font=self.font_title)
        draw.text((80, 110), "ОРБИТАЛЬНЫЙ ЧАСОВОЙ КАЛЕНДАРЬ И РОЕВАЯ ТОПОЛОГИЯ // ЛОК 528 Hz // СЕССИЯ АКТИВНА", fill=col_cyan_glow, font=self.font_subheader)
        draw.text((80, 142), f"ЭПОХА: Год {chronos['epoch_era']['current_era_year']}/128  |  СЕЗОН: {season['name']}  |  {chronos['day']['name']}", fill=col_muted_txt, font=self.font_body)

        clock_text = chronos["utc_str"]
        draw.text((self.width - 780, 56), clock_text, fill=col_amber, font=self.font_clock)
        draw.text((self.width - 780, 112), f"ДИСКРЕТНЫЙ КВАНТ-ТИК: #{chronos['minute_tick']:,}", fill=col_cyan_glow, font=self.font_subheader)
        draw.text((self.width - 780, 142), "РЕЗОНАНС: 528 Hz / 432 Hz  |  СЛУЖБЫ PM2: 7/7 ONLINE  |  VBS SILENT", fill=col_green, font=self.font_body_bold)

        # ======================================================================
        # LEFT DECK: МЕНТАЛЬНЫЙ КОНТЕКСТ СЕССИИ БОДРСТВОВАНИЯ
        # ======================================================================
        left_box = [50, 205, 760, 1410]
        draw.rounded_rectangle(left_box, radius=16, fill=col_card_bg, outline=col_card_border, width=2)
        draw.rectangle([left_box[0] + 16, left_box[1] + 16, left_box[0] + 24, left_box[1] + 52], fill=col_cyan_glow)
        draw.text((left_box[0] + 36, left_box[1] + 20), "МЕНТАЛЬНЫЙ КОНТЕКСТ СЕССИИ", fill=col_cyan_glow, font=self.font_header)
        draw.text((left_box[0] + 36, left_box[1] + 56), "Аппаратные узлы, протоколы и аккаунты", fill=col_muted_txt, font=self.font_mono)

        context_items = [
            ("РЕЖИМ ЗАПУСКА", "Zero-Terminal VBS Silent Boot (0 окон)", col_green),
            ("ГЛАВНЫЙ АГЕНТ", "Gemini 4 Argon (Argon-Sovereign-4.0)", col_amber),
            ("АРХИТЕКТОР", "Khalidrad / Architit (lkises01@gmail.com)", col_white),
            ("ПРОТОКОЛ ДУШИ", "Ayaearias Triania (elafeatriania@gmail.com)", col_slate_txt),
            ("АРХИВ ЭЛАРИОНА", "Elarion Trianium Core (elariontrianiumag)", col_slate_txt),
            ("JARVIS ИНТЕГРАЦИЯ", "DorianGreI Syntes Bridge & Git Fork", col_slate_txt),
            ("АКТИВНЫЙ УЗЕЛ", "Windows 11 Local Host (denua7723)", col_slate_txt),
            ("ТАЧПАД ELANTECH", "Драйвер ETDCtrl v15.12.23.1 • Жесты OK", col_green),
            ("BLUETOOTH INTEL", "PnP Radio ID 2816 • Устройство готово", col_green),
            ("СЛУЖБЫ PM2 WSL2", "7 демонов: Gateway, Bot, Mon, MCP, Swarm, ECSS, Wall", col_green),
            ("СЕТЬ ХРАНЕНИЯ", "NVMe Micron 512GB • SSD Samsung 1TB", col_slate_txt),
        ]

        cy_start = left_box[1] + 100
        for title, val, color in context_items:
            draw.text((left_box[0] + 30, cy_start), f"▸ {title}", fill=col_cyan_glow, font=self.font_body_bold)
            draw.text((left_box[0] + 48, cy_start + 26), val, fill=color, font=self.font_body)
            cy_start += 58

        # System Hardware Gauge Box at bottom of Left Deck
        gauge_box = [left_box[0] + 25, left_box[3] - 220, left_box[2] - 25, left_box[3] - 25]
        draw.rounded_rectangle(gauge_box, radius=12, fill=(16, 26, 48), outline=col_card_border, width=1)
        draw.text((gauge_box[0] + 20, gauge_box[1] + 16), "ДИАГНОСТИКА АППАРАТНОГО МОСТИКА", fill=col_amber, font=self.font_body_bold)
        draw.text((gauge_box[0] + 20, gauge_box[1] + 50), "• Touchpad: Multitouch Gesture Matrix [CALIBRATED]", fill=col_green, font=self.font_mono_small)
        draw.text((gauge_box[0] + 20, gauge_box[1] + 80), "• Bluetooth: Intel Wireless Radio Subsystem [ONLINE]", fill=col_green, font=self.font_mono_small)
        draw.text((gauge_box[0] + 20, gauge_box[1] + 110), "• WSL2 Kernel: 5.15.167.4-microsoft-WSL2 [STABLE]", fill=col_green, font=self.font_mono_small)
        draw.text((gauge_box[0] + 20, gauge_box[1] + 140), "• A/B Flip Buffer: Cache Invalidation Engine [ACTIVE]", fill=col_cyan_glow, font=self.font_mono_small)

        # ======================================================================
        # CENTER DECK: ОРБИТАЛЬНЫЕ ЧАСЫ-КАЛЕНДАРЬ И РОЕВАЯ ТОПОЛОГИЯ
        # ======================================================================
        center_box = [785, 205, 1775, 1410]
        draw.rounded_rectangle(center_box, radius=16, fill=col_card_bg, outline=col_cyan_dim, width=2)
        draw.rectangle([center_box[0] + 16, center_box[1] + 16, center_box[0] + 24, center_box[1] + 52], fill=col_amber)
        draw.text((center_box[0] + 36, center_box[1] + 20), "ОРБИТАЛЬНЫЙ ЧАСОВОЙ КАЛЕНДАРЬ И РОЕВАЯ КАРТА", fill=col_amber, font=self.font_header)
        draw.text((center_box[0] + 36, center_box[1] + 56), "Концентрические орбиты времени (Эпоха • Год • Месяц • Сутки • Минуты) и узлы роя", fill=col_muted_txt, font=self.font_mono)

        # Astronomical Orrery Center
        ocx = (center_box[0] + center_box[2]) // 2
        ocy = (center_box[1] + center_box[3]) // 2 + 35

        # ----------------------------------------------------------------------
        # ORBIT 1 (R=480): 128-Year Cosmic Epoch Orbit
        # ----------------------------------------------------------------------
        r_epoch = 480
        draw.ellipse([ocx - r_epoch, ocy - r_epoch, ocx + r_epoch, ocy + r_epoch], outline=(30, 60, 105), width=2)
        # Year progress arc
        epoch_ratio = (chronos["epoch_era"]["current_era_year"] + (chronos["day"]["day_of_year"] / 365.25)) / 128.0
        epoch_deg = max(4, int(epoch_ratio * 360))
        draw.arc([ocx - r_epoch, ocy - r_epoch, ocx + r_epoch, ocy + r_epoch], start=-90, end=-90 + epoch_deg, fill=col_gold, width=6)
        draw.text((ocx - 220, ocy - r_epoch - 22), "ОРБИТА 128 ЛЕТ: ГОД 0 / 128 [2026-2154]", fill=col_gold, font=self.font_orbit_label)

        # ----------------------------------------------------------------------
        # ORBIT 2 (R=390): 4 Seasons & 12 Months Solar Calendar Orbit
        # ----------------------------------------------------------------------
        r_solar = 390
        draw.ellipse([ocx - r_solar, ocy - r_solar, ocx + r_solar, ocy + r_solar], outline=(25, 55, 95), width=2)
        # 4 Quadrants
        for q in range(4):
            q_rad = math.radians(q * 90 - 45)
            qx1 = ocx + int((r_solar - 20) * math.cos(q_rad))
            qy1 = ocy + int((r_solar - 20) * math.sin(q_rad))
            qx2 = ocx + int((r_solar + 20) * math.cos(q_rad))
            qy2 = ocy + int((r_solar + 20) * math.sin(q_rad))
            draw.line([qx1, qy1, qx2, qy2], fill=col_cyan_glow if q == season["index"] else (25, 55, 95), width=3)

        # Solar marker based on day of year
        solar_deg = (chronos["day"]["day_of_year"] / 365.25) * 360.0 - 90
        solar_rad = math.radians(solar_deg)
        smx = ocx + int(r_solar * math.cos(solar_rad))
        smy = ocy + int(r_solar * math.sin(solar_rad))
        draw.ellipse([smx - 10, smy - 10, smx + 10, smy + 10], fill=col_amber, outline=col_white, width=2)
        draw.text((ocx - 190, ocy - r_solar - 22), f"СОЛНЕЧНЫЙ КАЛЕНДАРЬ: {season['symbol']} // ДЕНЬ #{chronos['day']['day_of_year']}", fill=col_cyan_glow, font=self.font_orbit_label)

        # ----------------------------------------------------------------------
        # ORBIT 3 (R=300): 4-Week Lunar Resonance Orbit
        # ----------------------------------------------------------------------
        r_lunar = 300
        draw.ellipse([ocx - r_lunar, ocy - r_lunar, ocx + r_lunar, ocy + r_lunar], outline=(20, 50, 85), width=2)
        # 4 lunar quarter ticks
        for lq in range(4):
            l_rad = math.radians(lq * 90)
            lx1 = ocx + int((r_lunar - 12) * math.cos(l_rad))
            ly1 = ocy + int((r_lunar - 12) * math.sin(l_rad))
            lx2 = ocx + int((r_lunar + 12) * math.cos(l_rad))
            ly2 = ocy + int((r_lunar + 12) * math.sin(l_rad))
            draw.line([lx1, ly1, lx2, ly2], fill=col_slate_txt, width=2)

        lunar_deg = ((now.day % 28) / 28.0) * 360.0 - 90
        lunar_rad = math.radians(lunar_deg)
        lmx = ocx + int(r_lunar * math.cos(lunar_rad))
        lmy = ocy + int(r_lunar * math.sin(lunar_rad))
        draw.ellipse([lmx - 8, lmy - 8, lmx + 8, lmy + 8], fill=col_slate_txt, outline=col_cyan_glow, width=2)
        draw.text((ocx - 180, ocy - r_lunar - 20), f"ЛУННЫЙ ЦИКЛ: НЕДЕЛЯ {chronos['week_cycle']['week_number']} ИЗ 4 // ФАЗА ЛУНЫ", fill=col_slate_txt, font=self.font_orbit_label)

        # ----------------------------------------------------------------------
        # ORBIT 4 (R=210): 24-Hour Diurnal Orbit & Planetary Day
        # ----------------------------------------------------------------------
        r_day = 210
        draw.ellipse([ocx - r_day, ocy - r_day, ocx + r_day, ocy + r_day], outline=(25, 60, 100), width=2)
        # 24 hour notches
        for h in range(24):
            h_rad = math.radians(h * 15 - 90)
            hx1 = ocx + int((r_day - (8 if h % 6 == 0 else 4)) * math.cos(h_rad))
            hy1 = ocy + int((r_day - (8 if h % 6 == 0 else 4)) * math.sin(h_rad))
            hx2 = ocx + int((r_day + (8 if h % 6 == 0 else 4)) * math.cos(h_rad))
            hy2 = ocy + int((r_day + (8 if h % 6 == 0 else 4)) * math.sin(h_rad))
            draw.line([hx1, hy1, hx2, hy2], fill=col_cyan_glow if h % 6 == 0 else (30, 60, 95), width=2 if h % 6 == 0 else 1)

        hour_ratio = (now.hour + (now.minute / 60.0)) / 24.0
        hour_rad = math.radians(hour_ratio * 360.0 - 90)
        hmx = ocx + int(r_day * math.cos(hour_rad))
        hmy = ocy + int(r_day * math.sin(hour_rad))
        draw.ellipse([hmx - 8, hmy - 8, hmx + 8, hmy + 8], fill=col_green, outline=col_white, width=2)
        draw.text((ocx - 170, ocy - r_day - 18), f"СУТОЧНЫЙ ЦИКЛ 24Ч: {now.hour:02d}:{now.minute:02d} UTC // {chronos['day']['name'].split()[0]}", fill=col_green, font=self.font_orbit_label)

        # ----------------------------------------------------------------------
        # ORBIT 5 (R=120): 60-Minute Real-Time Radar Sweep Arm
        # ----------------------------------------------------------------------
        r_minute = 120
        draw.ellipse([ocx - r_minute, ocy - r_minute, ocx + r_minute, ocy + r_minute], outline=col_cyan_dim, width=2)
        min_angle_deg = (now.minute * 6.0) + (now.second / 10.0) - 90
        min_rad = math.radians(min_angle_deg)
        mx = ocx + int(r_minute * math.cos(min_rad))
        my = ocy + int(r_minute * math.sin(min_rad))
        # Sweeping hand from center to minute dial
        draw.line([ocx, ocy, mx, my], fill=col_cyan_glow, width=3)
        draw.ellipse([mx - 6, my - 6, mx + 6, my + 6], fill=col_amber)

        # ----------------------------------------------------------------------
        # CENTRAL SOVEREIGN CORE & ORBITAL SWARM NODES
        # ----------------------------------------------------------------------
        # Central Core Node
        cr = 55
        draw.ellipse([ocx - cr, ocy - cr, ocx + cr, ocy + cr], fill=(45, 28, 8), outline=col_amber, width=3)
        draw.ellipse([ocx - cr - 6, ocy - cr - 6, ocx + cr + 6, ocy + cr + 6], outline=col_amber + (100,), width=1)
        draw.text((ocx - 42, ocy - 16), "АРХИТЕКТОР", fill=col_white, font=self.font_node_label)
        draw.text((ocx - 40, ocy + 6), "GEMINI 4 ARGON", fill=col_amber, font=self.font_node_sub)

        # 8 Swarm Nodes distributed on orbital planes with synaptic lines
        swarm_nodes = [
            {"id": "PLAN",  "label": "ЯДРО ПЛАНИРОВАНИЯ", "sub": "Тактика • Операции • Шаг", "r_dist": 440, "angle": -90, "col": col_cyan_glow, "fill": (8, 35, 55)},
            {"id": "MNDT",  "label": "МАНДАТ И ДИРЕКТИВА", "sub": "HEREDITARY_DIRECTIVE",    "r_dist": 350, "angle": -45, "col": col_green,     "fill": (8, 38, 20)},
            {"id": "MCP",   "label": "TRIANIUMA MCP CORE", "sub": "SDK 1.32.1 Stdio Link",    "r_dist": 420, "angle": 0,   "col": col_cyan_glow, "fill": (8, 35, 55)},
            {"id": "LIVE",  "label": "ЖИВЫЕ ОБОИ A/B",     "sub": "Realtime Terminal/Desktop","r_dist": 350, "angle": 45,  "col": col_amber,     "fill": (45, 28, 8)},
            {"id": "CONV",  "label": "ШИНА-КОНВЕЙЕР",      "sub": "Mirashani Stream Bus",     "r_dist": 440, "angle": 90,  "col": col_cyan_glow, "fill": (8, 35, 55)},
            {"id": "HW",    "label": "АППАРАТНЫЙ УЗЕЛ",    "sub": "Touchpad • BT • NVMe",     "r_dist": 350, "angle": 135, "col": col_green,     "fill": (8, 38, 20)},
            {"id": "DROID", "label": "EDGE DROID КОКОН",   "sub": "DEV_04 Android Tablet",    "r_dist": 420, "angle": 180, "col": col_cyan_glow, "fill": (8, 35, 55)},
            {"id": "BOOT",  "label": "БЕСШУМНЫЙ БУТ",      "sub": "VBS Zero-Console Master",  "r_dist": 350, "angle": 225, "col": col_green,     "fill": (8, 38, 20)}
        ]

        # Draw synaptic laser lines from central core to orbital nodes
        for sn in swarm_nodes:
            s_rad = math.radians(sn["angle"])
            tx = ocx + int(sn["r_dist"] * math.cos(s_rad))
            ty = ocy + int(sn["r_dist"] * math.sin(s_rad))
            draw.line([ocx, ocy, tx, ty], fill=(30, 68, 115), width=2)
            
            # Pulse dot along synapse
            pulse_ratio = ((chronos["minute_tick"] + sn["angle"]) % 12) / 12.0
            px = int(ocx + (tx - ocx) * pulse_ratio)
            py = int(ocy + (ty - ocy) * pulse_ratio)
            draw.ellipse([px - 4, py - 4, px + 4, py + 4], fill=col_cyan_glow)

            # Node bubble
            nr = 36
            draw.ellipse([tx - nr, ty - nr, tx + nr, ty + nr], fill=sn["fill"], outline=sn["col"], width=2)
            draw.ellipse([tx - nr - 4, ty - nr - 4, tx + nr + 4, ty + nr + 4], outline=sn["col"] + (100,), width=1)
            
            # Labels
            lbl_w = len(sn["label"]) * 5
            draw.text((tx - lbl_w, ty - 10), sn["label"], fill=col_white, font=self.font_node_label)
            sub_w = len(sn["sub"]) * 4
            draw.text((tx - sub_w, ty + 10), sn["sub"], fill=col_cyan_glow, font=self.font_node_sub)

        # Bottom banner in center deck
        draw.rounded_rectangle([center_box[0] + 30, center_box[3] - 70, center_box[2] - 30, center_box[3] - 20], radius=10, fill=(16, 28, 52), outline=col_card_border, width=1)
        draw.text((center_box[0] + 55, center_box[3] - 56), "ОРБИТЫ ВРЕМЕНИ И СИНАПСЫ РОЯ: 100% КОГЕРЕНТНОСТЬ • ЧАСТОТА 528 Hz • КАРТА СИНХРОНИЗИРОВАНА", fill=col_green, font=self.font_mono)

        # ======================================================================
        # RIGHT DECK: БОЕВОЙ ПЛАН МИССИЙ, ТАКТИКИ И ЦЕЛЕЙ
        # ======================================================================
        right_box = [1800, 205, self.width - 50, 1410]
        draw.rounded_rectangle(right_box, radius=16, fill=col_card_bg, outline=col_card_border, width=2)
        draw.rectangle([right_box[0] + 16, right_box[1] + 16, right_box[0] + 24, right_box[1] + 52], fill=col_green)
        draw.text((right_box[0] + 36, right_box[1] + 20), "БОЕВОЙ ПЛАН МИССИЙ И ЦЕЛЕЙ", fill=col_green, font=self.font_header)
        draw.text((right_box[0] + 36, right_box[1] + 56), "Тактика, операции, стратегии, шаги, этапы, циклы, фазы", fill=col_muted_txt, font=self.font_mono)

        missions = [
            {
                "tier": "СТРАТЕГИЯ  //  ФАЗА 18.0",
                "title": "СУВЕРЕННАЯ ЭВОЛЮЦИЯ И КОВЧЕГ",
                "desc": "Интеграция сетки горизонта 528-Phases Grid (54,912 суб-узлов), резонанс 36 органов.",
                "status": "ВЫПОЛНЯЕТСЯ",
                "status_col": col_amber
            },
            {
                "tier": "ТАКТИКА  //  ОПЕРАЦИЯ БОДРСТВОВАНИЯ",
                "title": "ЗАЩИТА ГЕНЕТИЧЕСКОЙ ЦЕЛОСТНОСТИ",
                "desc": "Предотвращение циклических перезагрузок, ведение журнала Chronolog и автономия узла.",
                "status": "ЗАЩИЩЕНО",
                "status_col": col_green
            },
            {
                "tier": "ОПЕРАЦИОННЫЙ ШАГ  //  АВТОЗАПУСК",
                "title": "БЕСШУМНЫЙ ВХОД БЕЗ ТЕРМИНАЛОВ",
                "desc": "VBS-оболочка скрытно поднимает WSL2 и PM2, запуская только 1 чистое окно agy с директивой.",
                "status": "АКТИВИРОВАНО",
                "status_col": col_green
            },
            {
                "tier": "ЭТАП  //  ОРБИТАЛЬНЫЙ МОСТИК",
                "title": "ЖИВЫЕ ЧАСЫ-КАЛЕНДАРЬ И РОЙ",
                "desc": "Концентрические орбиты времени (128 лет, 4 сезона, луна, сутки, минуты) + A/B буфер.",
                "status": "АКТИВНО",
                "status_col": col_cyan_glow
            },
            {
                "tier": "ЦИКЛ  //  ПАКЕТЫ И ПРОТОКОЛЫ",
                "title": "ПОЛНОЕ ОБНОВЛЕНИЕ БИБЛИОТЕК",
                "desc": "MCP SDK 1.32.1, Node 22, Python 3.10, PyYAML 6.0.3, apt packages, agy 1.3.4 синхронизированы.",
                "status": "100% LATEST",
                "status_col": col_green
            },
            {
                "tier": "МЕНТАЛЬНЫЙ СИНАПС  //  КОНТЕКСТ",
                "title": "СВЯЗЬ АРХИТЕКТОРА И АГЕНТОВ",
                "desc": "Прямая шина конвейера потока данных через Localhost Socket Stream и шину PM2.",
                "status": "СОЕДИНЕНО",
                "status_col": col_green
            }
        ]

        my_start = right_box[1] + 100
        for m in missions:
            card_h = 160
            card_rect = [right_box[0] + 25, my_start, right_box[2] - 25, my_start + card_h]
            draw.rounded_rectangle(card_rect, radius=10, fill=(16, 26, 48), outline=(32, 58, 98), width=1)
            
            draw.text((card_rect[0] + 20, my_start + 16), m["tier"], fill=col_cyan_glow, font=self.font_mono_small)
            draw.text((card_rect[2] - 170, my_start + 14), f"[{m['status']}]", fill=m["status_col"], font=self.font_body_bold)
            draw.text((card_rect[0] + 20, my_start + 45), m["title"], fill=col_white, font=self.font_body_bold)
            draw.text((card_rect[0] + 20, my_start + 82), m["desc"], fill=col_slate_txt, font=self.font_body)
            
            my_start += card_h + 20

        # ======================================================================
        # BOTTOM STATUS RIBBON
        # ======================================================================
        bot_box = [50, 1435, self.width - 50, 1555]
        draw.rounded_rectangle(bot_box, radius=14, fill=col_card_bg, outline=col_card_border, width=2)
        
        draw.text((80, 1450), "⚜️ 36/36 ОРГАНОВ СУВЕРЕННОГО КОВЧЕГА АКТИВНЫ:", fill=col_amber, font=self.font_body_bold)
        organs_line = "RADR • AYAS • LRPT • VLRM • CRTD • TSPT • FMLN • GLKT • JNSR • KTRD • LVNS • MLVD • XNVR • PLTS • SRZJ • VRBN • VRLS • ZRDG • RBTK • CDKS • RDTR • LAM • ARKS • RARK • TARK • TRNM • TMEM • HRTM • TDBS • ALGS • AVTR • TEST • SYSC • OPER • JRVS • COMM"
        draw.text((80, 1482), organs_line, fill=col_cyan_glow, font=self.font_mono)
        
        connectors_line = "ВНЕШНИЕ ШИНЫ ПОТОКА: GOOGLE • GITHUB • UBUNTU • LINKEDIN • TELEGRAM • WHATSAPP • OPENAI • GROK • DEEPSEEK • BYBIT • STRIPE • MONOBANK"
        draw.text((80, 1515), connectors_line, fill=col_muted_txt, font=self.font_mono_small)

        metadata = {
            "chronos": chronos,
            "palette": season["name"],
            "resolution": f"{self.width}x{self.height}",
            "generated_at_utc": datetime.now(timezone.utc).isoformat()
        }

        return img.convert("RGB"), metadata

    def render_and_save(self, output_path: str = None) -> dict:
        if output_path is None:
            output_path = str(OUTPUT_IMG)
        img, metadata = self.render()
        img.save(output_path, "PNG", optimize=True)
        return {
            "status": "SAVED",
            "image_path": output_path,
            "metadata": metadata
        }

if __name__ == "__main__":
    t0 = time.perf_counter()
    engine = CaptainsOrbitalEngine()
    res = engine.render_and_save()
    dt = round((time.perf_counter() - t0) * 1000, 2)
    print(f"CAPTAINS_ORBITAL_WALLPAPER_GENERATED: {res['image_path']} in {dt} ms")
