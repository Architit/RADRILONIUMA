#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA TABLET WALLPAPER CHRONOS ENGINE
============================================
Procedural Wallpaper Generator & Chronos Slideshow Algorithm.
Cycles deterministically across:
- 128 Years Sovereign Epoch
- 4 Seasons (Vernal, Estival, Autumnal, Hibernal)
- 4 Weeks Lunar Cycle
- 7 Days Diurnal Planetary Harmonics
- 1-Minute Continuous Roll Updates

Outputs 2560x1600 Ultra-HD Wallpapers with Cybernetic Sacred Geometry HUD.
"""

import os
import sys
import math
import time
from pathlib import Path
from datetime import datetime, timezone
from typing import Dict, Any, Tuple
from PIL import Image, ImageDraw, ImageFont

ROOT_DIR = Path(__file__).resolve().parents[2]
ADMIN_DIR = ROOT_DIR / "core" / "global_admin"
OUTPUT_DIR = ROOT_DIR / "data" / "wallpapers"
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

sys.path.insert(0, str(ADMIN_DIR))
from state_space_wheel import StateSpaceWheel

# 4 Season Palettes (Gradient start, mid, end, accent)
SEASON_PALETTES = {
    0: {  # Vernal (Spring)
        "name": "Vernal Emergence",
        "bg_top": (8, 28, 21),
        "bg_bottom": (4, 15, 12),
        "glow": (16, 185, 129),       # Emerald
        "accent": (245, 158, 11),     # Gold
        "secondary": (52, 211, 153),
        "symbol": "🌱 ⚜️ VERNAL EQUINOX"
    },
    1: {  # Estival (Summer)
        "name": "Estival Solar Peak",
        "bg_top": (30, 20, 10),
        "bg_bottom": (12, 10, 25),
        "glow": (245, 158, 11),       # Amber Gold
        "accent": (59, 130, 246),     # Cobalt Sapphire
        "secondary": (251, 191, 36),
        "symbol": "☀️ ⚜️ ESTIVAL SOLSTICE"
    },
    2: {  # Autumnal (Autumn)
        "name": "Autumnal Convergence",
        "bg_top": (35, 15, 10),
        "bg_bottom": (15, 8, 8),
        "glow": (234, 88, 12),        # Copper Ochre
        "accent": (220, 38, 38),      # Ruby Red
        "secondary": (249, 115, 22),
        "symbol": "🍂 ⚜️ AUTUMNAL HARVEST"
    },
    3: {  # Hibernal (Winter)
        "name": "Hibernal Deep Crystalline",
        "bg_top": (10, 15, 30),
        "bg_bottom": (5, 6, 15),
        "glow": (99, 102, 241),       # Crystal Indigo
        "accent": (147, 51, 234),     # Deep Amethyst
        "secondary": (56, 189, 248),
        "symbol": "❄️ ⚜️ HIBERNAL CRYSTAL"
    }
}

# 7-Day Chakra & Solfeggio Harmonics
DAY_HARMONICS = [
    {"day": "Monday", "freq": 396.0, "planet": "Luna", "color": (168, 85, 247)},
    {"day": "Tuesday", "freq": 417.0, "planet": "Mars", "color": (239, 68, 68)},
    {"day": "Wednesday", "freq": 528.0, "planet": "Mercury", "color": (16, 185, 129)},
    {"day": "Thursday", "freq": 639.0, "planet": "Jupiter", "color": (59, 130, 246)},
    {"day": "Friday", "freq": 741.0, "planet": "Venus", "color": (236, 72, 153)},
    {"day": "Saturday", "freq": 852.0, "planet": "Saturn", "color": (148, 163, 184)},
    {"day": "Sunday", "freq": 963.0, "planet": "Sol", "color": (251, 191, 36)}
]

class WallpaperChronosEngine:
    def __init__(self, width: int = 2560, height: int = 1600):
        self.width = width
        self.height = height
        self.wheel = StateSpaceWheel()

    def generate_procedural_wallpaper(self, ts: float = None) -> Tuple[Image.Image, Dict[str, Any]]:
        """Generates a procedural high-resolution wallpaper mathematically keyed to current chronos coordinate."""
        chronos = self.wheel.calculate_chronos_coordinates(ts)
        
        era_year = chronos["epoch_era"]["current_era_year"]
        season_idx = chronos["season"]["index"]
        week_num = chronos["week_cycle"]["week_number"]
        day_idx = chronos["day"]["index"]
        day_name = chronos["day"]["name"]
        min_of_day = chronos["time"]["minute_of_day"]
        hour = chronos["time"]["hour"]
        minute = chronos["time"]["minute"]
        second = chronos["time"]["second"]
        wheel_sector = chronos["wheel_state"]["sector_name"]
        wheel_freq = chronos["wheel_state"]["frequency_hz"]

        palette = SEASON_PALETTES[season_idx]
        day_harmonic = DAY_HARMONICS[day_idx]

        # 1. Base Gradient Canvas
        img = Image.new("RGBA", (self.width, self.height), palette["bg_bottom"] + (255,))
        draw = ImageDraw.Draw(img)

        # Smooth vertical gradient
        for y in range(0, self.height, 4):
            factor = y / float(self.height)
            r = int(palette["bg_top"][0] * (1 - factor) + palette["bg_bottom"][0] * factor)
            g = int(palette["bg_top"][1] * (1 - factor) + palette["bg_bottom"][1] * factor)
            b = int(palette["bg_top"][2] * (1 - factor) + palette["bg_bottom"][2] * factor)
            draw.rectangle([0, y, self.width, y + 4], fill=(r, g, b, 255))

        # 2. Concentric Cybernetic Radar & Sacred Wheels
        cx, cy = self.width // 2, self.height // 2
        glow_color = palette["glow"] + (180,)
        accent_color = palette["accent"] + (200,)
        dim_color = (255, 255, 255, 35)

        # Draw time circles
        radii = [180, 280, 400, 540, 680]
        for r in radii:
            draw.ellipse([cx - r, cy - r, cx + r, cy + r], outline=dim_color, width=2)

        # 128-Year Epoch Outer Progress Arc
        epoch_ratio = (era_year + (min_of_day / 1440.0)) / 128.0
        epoch_deg = int(epoch_ratio * 360)
        draw.arc([cx - 700, cy - 700, cx + 700, cy + 700], start=-90, end=-90 + epoch_deg, fill=accent_color, width=8)

        # 4 Seasons Inner Quad Marker
        for q in range(4):
            angle_rad = math.radians(q * 90 - 45)
            x1 = cx + int(420 * math.cos(angle_rad))
            y1 = cy + int(420 * math.sin(angle_rad))
            x2 = cx + int(520 * math.cos(angle_rad))
            y2 = cy + int(520 * math.sin(angle_rad))
            color = glow_color if q == season_idx else dim_color
            draw.line([x1, y1, x2, y2], fill=color, width=4)

        # 1-Minute Radar Sweep Line
        # Rotates 360 degrees per hour (6 degrees per minute) or sweeps continuously
        minute_angle_deg = (min_of_day % 60) * 6.0 + (second / 10.0)
        sweep_rad = math.radians(minute_angle_deg - 90)
        sx = cx + int(540 * math.cos(sweep_rad))
        sy = cy + int(540 * math.sin(sweep_rad))
        draw.line([cx, cy, sx, sy], fill=glow_color, width=3)
        draw.ellipse([sx - 8, sy - 8, sx + 8, sy + 8], fill=glow_color)

        # State Space Wheel 8 Sector Nodes
        wheel_sectors = 8
        for s in range(wheel_sectors):
            s_angle = math.radians(s * (360 / wheel_sectors) - 90)
            node_r = 400
            nx = cx + int(node_r * math.cos(s_angle))
            ny = cy + int(node_r * math.sin(s_angle))
            is_active = (s == chronos["wheel_state"]["active_sector_index"])
            node_col = accent_color if is_active else dim_color
            radius = 16 if is_active else 8
            draw.ellipse([nx - radius, ny - radius, nx + radius, ny + radius], fill=node_col, outline=glow_color, width=2)

        # Central Sovereign Seal & Solfeggio Core
        draw.ellipse([cx - 100, cy - 100, cx + 100, cy + 100], fill=(0, 0, 0, 160), outline=glow_color, width=4)
        draw.ellipse([cx - 40, cy - 40, cx + 40, cy + 40], fill=accent_color)

        # 3. HUD Text & Information Overlay
        # Using PIL default font with clean layout positioning
        # Header Box Top-Left
        hud_bg = (15, 23, 42, 220)
        border_col = glow_color
        
        draw.rounded_rectangle([60, 60, 840, 280], radius=16, fill=hud_bg, outline=border_col, width=2)
        draw.text((90, 80), "RADRILONIUMA SOVEREIGN AUTONOMOUS KINGDOM", fill=(255, 255, 255, 255))
        draw.text((90, 110), f"TEMPORAL SLIDESHOW ALGORITHM // 1-MIN ROLL", fill=palette["glow"])
        draw.text((90, 140), f"EPOCH: Year {era_year} of 128 Years | Anchor: 2026-2154", fill=(203, 213, 225, 255))
        draw.text((90, 170), f"SEASON: {palette['symbol']} ({chronos['season']['quarter']})", fill=palette["accent"])
        draw.text((90, 200), f"CYCLE: Week {week_num} of 4 Weeks | {day_name}", fill=(203, 213, 225, 255))
        draw.text((90, 230), f"SOLFEGGIO HARMONIC: {day_harmonic['freq']} Hz ({day_harmonic['planet']})", fill=palette["glow"])

        # Realtime Clock & Wheel Sector Top-Right
        draw.rounded_rectangle([self.width - 840, 60, self.width - 60, 280], radius=16, fill=hud_bg, outline=border_col, width=2)
        draw.text((self.width - 810, 80), "STATE SPACE WHEEL (SOTE SPACE WHEEL)", fill=(255, 255, 255, 255))
        draw.text((self.width - 810, 110), f"ACTIVE SECTOR: {wheel_sector}", fill=palette["accent"])
        draw.text((self.width - 810, 140), f"CARRIER FREQUENCY: {wheel_freq} Hz (Carrier Lock 528/432 Hz)", fill=palette["glow"])
        draw.text((self.width - 810, 170), f"SYSTEM TIME (UTC): {hour:02d}:{minute:02d}:{second:02d}", fill=(255, 255, 255, 255))
        draw.text((self.width - 810, 200), f"DISCRETE MINUTE TICK: #{chronos['epoch_era']['discrete_minute_tick']:,}", fill=(148, 163, 184, 255))
        draw.text((self.width - 810, 230), f"TARGET DEVICE: DEV_04_EDGE_DROID [TABLET SLIDESHOW]", fill=palette["glow"])

        # Bottom Bar: 36 Organs & Swarm Mesh Status
        draw.rounded_rectangle([60, self.height - 180, self.width - 60, self.height - 60], radius=16, fill=hud_bg, outline=border_col, width=2)
        draw.text((90, self.height - 155), "SWARM ORCHESTRATION & DATA STREAM CONVEYOR (ШИНА-КОНВЕЕР ПОТОКА ДАННЫХ)", fill=(255, 255, 255, 255))
        draw.text((90, self.height - 125), "36/36 ORGANS ACTIVE  |  5 MESH NODES SYNCHRONIZED  |  33 EXTERNAL PLATFORM CONNECTORS ONLINE", fill=palette["glow"])
        draw.text((90, self.height - 95), "GOOGLE • GITHUB • UBUNTU • LINKEDIN • TELEGRAM • WHATSAPP • OPENAI • GROK • DEEPSEEK • BYBIT • STRIPE • KVK • MONOBANK", fill=(148, 163, 184, 255))

        metadata = {
            "chronos": chronos,
            "palette": palette["name"],
            "resolution": f"{self.width}x{self.height}",
            "generated_at_utc": datetime.now(timezone.utc).isoformat()
        }

        return img.convert("RGB"), metadata

    def render_and_save(self, output_path: str = None) -> Dict[str, Any]:
        """Generates and writes wallpaper image and JSON metadata to disk."""
        if output_path is None:
            output_path = str(OUTPUT_DIR / "current_wallpaper.png")
            
        img, metadata = self.generate_procedural_wallpaper()
        img.save(output_path, "PNG", optimize=True)
        
        meta_path = Path(output_path).with_suffix(".json")
        with open(meta_path, "w", encoding="utf-8") as f:
            import json
            json.dump(metadata, f, indent=2)

        return {
            "status": "SAVED",
            "image_path": output_path,
            "metadata_path": str(meta_path),
            "metadata": metadata
        }

if __name__ == "__main__":
    engine = WallpaperChronosEngine()
    res = engine.render_and_save()
    print("=== PROCEDURAL WALLPAPER CHRONOS ENGINE GENERATED ===")
    print(f"Image: {res['image_path']}")
    print(f"Season: {res['metadata']['chronos']['season']['name']}")
    print(f"Era Year: {res['metadata']['chronos']['epoch_era']['current_era_year']} / 128")
    print(f"Minute Tick: {res['metadata']['chronos']['epoch_era']['discrete_minute_tick']}")
