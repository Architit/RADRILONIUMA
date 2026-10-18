#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
LAO LETTERER AGENT CORE (TYPOGRAPHY, GLYPH ENGINE & TEXT MATRIX)
================================================================
Supreme Calligraphic & Typographic Organ:
- Renders crisp high-contrast multilingual text (Cyrillic, Latin, Glyphs)
- Implements specialized formatting for HUD cards, orbital telemetry, and window widgets
- Uses warm color harmonic accents (Warm Green, Yellow, Orange, Green, Lime, Turquoise)
- Formats status banners, machine parameters, and ontological glyphs
- Document Canvas Typography with specialized Tab, Document & Rulers fonts
"""

import os
from pathlib import Path
from PIL import ImageDraw, ImageFont

FONT_DIR = Path("/usr/share/fonts/truetype")
FONT_SANS_BOLD = str(FONT_DIR / "dejavu" / "DejaVuSans-Bold.ttf")
FONT_SANS = str(FONT_DIR / "dejavu" / "DejaVuSans.ttf")
FONT_MONO_BOLD = str(FONT_DIR / "dejavu" / "DejaVuSansMono-Bold.ttf")
FONT_MONO = str(FONT_DIR / "dejavu" / "DejaVuSansMono.ttf")

class LaoLettererAgent:
    def __init__(self):
        self.agent_id = "LAO_LETTERER_AGENT_001"
        self.role = "Master Typographer & Text Substrate Engine"
        self._load_fonts()

    def _load_fonts(self):
        try:
            self.title_font = ImageFont.truetype(FONT_SANS_BOLD, 34)
            self.clock_font = ImageFont.truetype(FONT_MONO_BOLD, 44)
            self.header_font = ImageFont.truetype(FONT_SANS_BOLD, 24)
            self.sub_font = ImageFont.truetype(FONT_MONO_BOLD, 18)
            self.tab_font = ImageFont.truetype(FONT_SANS_BOLD, 15)
            self.body_bold = ImageFont.truetype(FONT_SANS_BOLD, 19)
            self.body_font = ImageFont.truetype(FONT_SANS, 17)
            self.mono_font = ImageFont.truetype(FONT_MONO, 16)
            self.small_mono = ImageFont.truetype(FONT_MONO, 14)
            self.tiny_mono = ImageFont.truetype(FONT_MONO_BOLD, 12)
            self.badge_font = ImageFont.truetype(FONT_SANS_BOLD, 13)
            self.doc_font = ImageFont.truetype(FONT_MONO, 11)
        except Exception:
            default = ImageFont.load_default()
            self.title_font = default
            self.clock_font = default
            self.header_font = default
            self.sub_font = default
            self.tab_font = default
            self.body_bold = default
            self.body_font = default
            self.mono_font = default
            self.small_mono = default
            self.tiny_mono = default
            self.badge_font = default
            self.doc_font = default

    def draw_badge(self, draw: ImageDraw.ImageDraw, xy, text: str, bg_color, text_color=(255, 255, 255), pad=8):
        """Отрисовывает аккуратный бейдж со скруглением и увеличенным паддингом."""
        x, y = xy
        bbox = draw.textbbox((x, y), text, font=self.badge_font)
        w = bbox[2] - bbox[0] + pad * 2
        h = bbox[3] - bbox[1] + pad * 2
        draw.rounded_rectangle([x, y, x + w, y + h], radius=6, fill=bg_color)
        draw.text((x + pad, y + pad // 2), text, fill=text_color, font=self.badge_font)
        return w, h

    def draw_tab(self, draw: ImageDraw.ImageDraw, xy, text: str, is_active=False, active_bg=(34, 197, 94), inactive_bg=(20, 42, 28)):
        """Отрисовывает интерактивную вкладку документа."""
        x, y = xy
        pad_x, pad_y = 12, 6
        bbox = draw.textbbox((x, y), text, font=self.tab_font)
        w = bbox[2] - bbox[0] + pad_x * 2
        h = bbox[3] - bbox[1] + pad_y * 2
        
        bg = active_bg if is_active else inactive_bg
        border = (250, 204, 21) if is_active else (38, 96, 58)
        text_col = (255, 255, 255) if is_active else (180, 190, 185)
        
        draw.rounded_rectangle([x, y, x + w, y + h], radius=5, fill=bg, outline=border, width=1)
        draw.text((x + pad_x, y + pad_y - 2), text, fill=text_col, font=self.tab_font)
        return w, h

    def draw_labeled_metric(self, draw: ImageDraw.ImageDraw, xy, label: str, val: str, label_col, val_col):
        """Отрисовывает пару метрика-значение с отступом."""
        x, y = xy
        draw.text((x, y), label, fill=label_col, font=self.small_mono)
        draw.text((x, y + 20), val, fill=val_col, font=self.body_bold)

if __name__ == "__main__":
    letterer = LaoLettererAgent()
    print(f"[{letterer.agent_id}] Typography loaded successfully with canvas tab metrics.")
