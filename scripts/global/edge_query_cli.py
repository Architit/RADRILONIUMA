#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • EDGE QUERY PATHER CLI ENTRY POINT
================================================
Simple CLI wrapper for EdgeQueryPather to avoid shell quoting and escaping issues.
"""

import sys
import json
import argparse
from pathlib import Path

ROOT_DIR = Path(__file__).resolve().parents[2]
CORE_DIR = ROOT_DIR / "core" / "neural_cluster_pipeline"
sys.path.insert(0, str(ROOT_DIR))
sys.path.insert(0, str(CORE_DIR))

from edge_query_pather import EdgeQueryPather

def main():
    parser = argparse.ArgumentParser(description="Edge Query Pather CLI")
    parser.add_argument("--query", required=True, help="Query or command to route")
    parser.add_argument("--source", default="DEV_02_ATESIRT", help="Initiator node ID")
    args = parser.parse_args()

    pather = EdgeQueryPather()
    result = pather.route_query(args.query, source_node=args.source)
    print(json.dumps(result, ensure_ascii=False))

if __name__ == "__main__":
    main()
