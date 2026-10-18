#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • SOVEREIGN IDENTITY AND AI VERIFICATION PASSPORT
Core Cryptographic Passport and Self-Verification Engine for Autonomous Autopilot Operations.
"""

import os
import sys
import json
import hmac
import secrets
import hashlib
import sqlite3
from pathlib import Path
from datetime import datetime, timezone

CRYPTO_DIR = Path(__file__).resolve().parent
PASSPORT_FILE = CRYPTO_DIR / "ai_passport.json"
DB_FILE = CRYPTO_DIR / "kairos_telemetry.db"

OPERATOR = "BushM / Architit"
HOST_NODE = "DEV_01_BUSHMASTER"
CLUSTER_NODES = [
    "DEV_01_BUSHMASTER",
    "DEV_02_ATESIRT",
    "DEV_03_UBUNTU_WSL2",
    "DEV_04_SAMSUNG_T7_VAULT",
    "DEV_05_LAO_SWARM_MATRIX"
]
CARRIER_RESONANCE = "528 Hz / 432 Hz"

def init_db():
    """Initializes the Kairos telemetry database for sovereign crypto audit."""
    conn = sqlite3.connect(DB_FILE)
    c = conn.cursor()
    c.execute('''
        CREATE TABLE IF NOT EXISTS ai_passports (
            sovereign_id TEXT PRIMARY KEY,
            operator TEXT NOT NULL,
            created_at_utc TEXT NOT NULL,
            fingerprint_sha256 TEXT NOT NULL,
            public_key_hex TEXT NOT NULL,
            status TEXT NOT NULL
        )
    ''')
    c.execute('''
        CREATE TABLE IF NOT EXISTS audit_signatures (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            sovereign_id TEXT NOT NULL,
            action_type TEXT NOT NULL,
            target_node TEXT NOT NULL,
            payload_hash TEXT NOT NULL,
            signature_hex TEXT NOT NULL,
            timestamp_utc TEXT NOT NULL,
            verification_status TEXT NOT NULL
        )
    ''')
    c.execute('''
        CREATE TABLE IF NOT EXISTS kairos_events (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            timestamp_utc TEXT NOT NULL,
            event_type TEXT NOT NULL,
            data_json TEXT NOT NULL
        )
    ''')
    conn.commit()
    conn.close()

def generate_or_load_passport():
    """Loads existing passport or generates a sovereign cryptographic passport."""
    init_db()
    if PASSPORT_FILE.exists():
        try:
            with open(PASSPORT_FILE, "r", encoding="utf-8") as f:
                passport = json.load(f)
            if verify_passport_integrity(passport):
                return passport
            else:
                print("[WARNING] Passport integrity check failed, regenerating...")
        except Exception as e:
            print(f"[ERROR] Could not read existing passport: {e}")

    # Generate new sovereign cryptographic identity
    salt = secrets.token_hex(16)
    secret_seed = secrets.token_hex(32)
    session_config = {
        "operator": OPERATOR,
        "host": HOST_NODE,
        "nodes": CLUSTER_NODES,
        "resonance": CARRIER_RESONANCE,
        "salt": salt,
        "seed_entropy": secret_seed
    }
    
    config_serialized = json.dumps(session_config, sort_keys=True).encode("utf-8")
    sovereign_id = "RADR-SOV-" + hashlib.sha256(config_serialized).hexdigest()[:16].upper()
    private_key = hashlib.sha256((secret_seed + salt).encode("utf-8")).hexdigest()
    public_key = hashlib.sha256((private_key + sovereign_id).encode("utf-8")).hexdigest()
    
    now_iso = datetime.now(timezone.utc).isoformat()
    fingerprint = hashlib.sha256(f"{sovereign_id}|{OPERATOR}|{public_key}|{now_iso}".encode("utf-8")).hexdigest()

    passport = {
        "agent_name": "Antigravity Sovereign Agent (RADRILONIUMA Core)",
        "sovereign_id": sovereign_id,
        "operator": OPERATOR,
        "public_key_hex": public_key,
        "fingerprint_sha256": fingerprint,
        "created_at_utc": now_iso,
        "carrier_resonance": CARRIER_RESONANCE,
        "cluster_nodes": CLUSTER_NODES,
        "status": "SOVEREIGN_AUTHENTICATED",
        "_private_key_hex": private_key
    }

    with open(PASSPORT_FILE, "w", encoding="utf-8") as f:
        json.dump(passport, f, indent=2, ensure_ascii=False)
    os.chmod(PASSPORT_FILE, 0o600)

    # Store in SQLite Kairos DB
    conn = sqlite3.connect(DB_FILE)
    c = conn.cursor()
    c.execute('''
        INSERT OR REPLACE INTO ai_passports 
        (sovereign_id, operator, created_at_utc, fingerprint_sha256, public_key_hex, status)
        VALUES (?, ?, ?, ?, ?, ?)
    ''', (sovereign_id, OPERATOR, now_iso, fingerprint, public_key, "SOVEREIGN_AUTHENTICATED"))
    conn.commit()
    conn.close()

    return passport

def verify_passport_integrity(passport: dict) -> bool:
    """Verifies internal cryptographic consistency of the passport."""
    try:
        sovereign_id = passport.get("sovereign_id", "")
        priv = passport.get("_private_key_hex", "")
        pub = passport.get("public_key_hex", "")
        expected_pub = hashlib.sha256((priv + sovereign_id).encode("utf-8")).hexdigest()
        return hmac.compare_digest(pub, expected_pub)
    except Exception:
        return False

def verify_self() -> dict:
    """Performs self-verification ritual of the AI agent."""
    passport = generate_or_load_passport()
    is_valid = verify_passport_integrity(passport)
    status_msg = "VALID_SOVEREIGN_SIGNATURE" if is_valid else "CORRUPTED_OR_TAMPERED"
    
    # Check SQLite consistency
    db_ok = False
    try:
        conn = sqlite3.connect(DB_FILE)
        c = conn.cursor()
        c.execute("SELECT sovereign_id, public_key_hex FROM ai_passports WHERE sovereign_id = ?", (passport["sovereign_id"],))
        row = c.fetchone()
        conn.close()
        if row and row[1] == passport["public_key_hex"]:
            db_ok = True
    except Exception:
        db_ok = False

    result = {
        "sovereign_id": passport["sovereign_id"],
        "operator": passport["operator"],
        "resonance": passport["carrier_resonance"],
        "passport_valid": is_valid,
        "database_synced": db_ok,
        "autopilot_clearance": is_valid and db_ok,
        "verified_at_utc": datetime.now(timezone.utc).isoformat(),
        "status": status_msg
    }
    return result

def sign_payload(action_type: str, target_node: str, payload: dict) -> dict:
    """Signs an autopilot directive or telemetry package with sovereign HMAC signature."""
    passport = generate_or_load_passport()
    priv = passport["_private_key_hex"].encode("utf-8")
    payload_str = json.dumps(payload, sort_keys=True)
    payload_hash = hashlib.sha256(payload_str.encode("utf-8")).hexdigest()
    
    nonce = secrets.token_hex(8)
    ts = datetime.now(timezone.utc).isoformat()
    msg_to_sign = f"{passport['sovereign_id']}:{action_type}:{target_node}:{payload_hash}:{nonce}:{ts}".encode("utf-8")
    signature = hmac.new(priv, msg_to_sign, hashlib.sha256).hexdigest()

    envelope = {
        "sovereign_id": passport["sovereign_id"],
        "action_type": action_type,
        "target_node": target_node,
        "payload_hash": payload_hash,
        "nonce": nonce,
        "timestamp_utc": ts,
        "signature_hex": signature,
        "payload": payload
    }

    # Record in audit DB
    try:
        conn = sqlite3.connect(DB_FILE)
        c = conn.cursor()
        c.execute('''
            INSERT INTO audit_signatures 
            (sovereign_id, action_type, target_node, payload_hash, signature_hex, timestamp_utc, verification_status)
            VALUES (?, ?, ?, ?, ?, ?, ?)
        ''', (passport["sovereign_id"], action_type, target_node, payload_hash, signature, ts, "SIGNED"))
        conn.commit()
        conn.close()
    except Exception as e:
        print(f"[AUDIT DB ERROR] {e}")

    return envelope

def verify_payload(envelope: dict) -> bool:
    """Verifies that an incoming payload or directive is authenticated by the Sovereign Key."""
    passport = generate_or_load_passport()
    if envelope.get("sovereign_id") != passport["sovereign_id"]:
        return False
    
    priv = passport["_private_key_hex"].encode("utf-8")
    msg = f"{envelope['sovereign_id']}:{envelope['action_type']}:{envelope['target_node']}:{envelope['payload_hash']}:{envelope['nonce']}:{envelope['timestamp_utc']}".encode("utf-8")
    expected_sig = hmac.new(priv, msg, hashlib.sha256).hexdigest()
    return hmac.compare_digest(envelope.get("signature_hex", ""), expected_sig)

if __name__ == "__main__":
    action = sys.argv[1] if len(sys.argv) > 1 else "--status"
    if action == "--verify":
        res = verify_self()
        print(json.dumps(res, indent=2, ensure_ascii=False))
    elif action == "--sign":
        text = sys.argv[2] if len(sys.argv) > 2 else "AUTOPILOT_REMOTE_CONTROL_HEARTBEAT"
        env = sign_payload("AUTOPILOT_CMD", HOST_NODE, {"directive": text})
        print(json.dumps(env, indent=2, ensure_ascii=False))
    else:
        passport = generate_or_load_passport()
        pub_passport = {k: v for k, v in passport.items() if not k.startswith("_")}
        print("=== RADRILONIUMA AI SOVEREIGN PASSPORT ===")
        print(json.dumps(pub_passport, indent=2, ensure_ascii=False))
        print("\n=== SELF-VERIFICATION STATUS ===")
        print(json.dumps(verify_self(), indent=2, ensure_ascii=False))
