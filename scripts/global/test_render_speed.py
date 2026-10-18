#!/usr/bin/env python3
import time
import sys
from pathlib import Path

sys.path.insert(0, "/root/RADRILONIUMA/sys/core/lao")
from lao_poster_agent import LaoPosterAgent

p = LaoPosterAgent()
t0 = time.time()
img, meta = p.render_poster()
t1 = time.time()
print(f"PIL Render time: {(t1 - t0) * 1000:.2f} ms")
