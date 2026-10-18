#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
RADRILONIUMA • TEST SUITE: SUBSTRATE BIOS BOOT & UPGRADE GATEWAY
==============================================================
Tests ISO definition integrity, P0 safety verification, autoinstall/preseed
generation, post-installation upgrade pipeline, and non-destructive boot structure.
"""

import os
import shutil
import tempfile
import pytest
from pathlib import Path

import importlib

boot_gateway = importlib.import_module("scripts.global.substrate_bios_boot_gateway")
TARGET_ISOS = boot_gateway.TARGET_ISOS
KNOWN_CANONICAL_HASHES = boot_gateway.KNOWN_CANONICAL_HASHES
verify_p0_safety = boot_gateway.verify_p0_safety
generate_autoinstall_config = boot_gateway.generate_autoinstall_config
configure_bootable_structure = boot_gateway.configure_bootable_structure
verify_iso_integrity = boot_gateway.verify_iso_integrity


@pytest.fixture
def mock_vault():
    tmp_dir = Path(tempfile.mkdtemp(prefix="radr_mock_vault_"))
    archive_dir = tmp_dir / "ATESIRT_VAULT_ARCHIVE"
    (archive_dir / "APKs").mkdir(parents=True, exist_ok=True)
    (archive_dir / "Movies").mkdir(parents=True, exist_ok=True)
    (archive_dir / "Screen_Recordings").mkdir(parents=True, exist_ok=True)

    # Initial grub.cfg
    grub_dir = tmp_dir / "boot" / "grub"
    grub_dir.mkdir(parents=True, exist_ok=True)
    with open(grub_dir / "grub.cfg", "w", encoding="utf-8") as f:
        f.write("# Initial default grub\nmenuentry 'Default' { linux /vmlinuz; }\n")

    yield tmp_dir
    shutil.rmtree(tmp_dir, ignore_errors=True)


def test_iso_definitions():
    assert len(TARGET_ISOS) == 3
    filenames = [item["filename"] for item in TARGET_ISOS]
    assert "ubuntu-24.04.2-live-server-amd64-003.iso" in filenames
    assert "ubuntu-24.04.2-desktop-amd64-002.iso" in filenames
    assert "Win11_24H2_EnglishInternational_x64-003.iso" in filenames

    # Canonical SHA-256s
    assert KNOWN_CANONICAL_HASHES["ubuntu-24.04.2-live-server-amd64-003.iso"] == "d6dab0c3a657988501b4bd76f1297c053df710e06e0c3aece60dead24f270b4d"
    assert KNOWN_CANONICAL_HASHES["ubuntu-24.04.2-desktop-amd64-002.iso"] == "d7fe3d6a0419667d2f8eff12796996328daa2d4f90cd9f87aa9371b362f987bf"
    assert KNOWN_CANONICAL_HASHES["Win11_24H2_EnglishInternational_x64-003.iso"] == "d5a4c97c3e835c43b1b9a31933327c001766ce314608ba912f2fffc876044309"


def test_p0_safety_check(mock_vault):
    # Valid vault
    safe, msg = verify_p0_safety(mock_vault)
    assert safe is True
    assert "P0_SAFETY_CONTRACT_V1_STRICTLY_PRESERVED" in msg

    # Invalid vault without ATESIRT_VAULT_ARCHIVE
    invalid_vault = Path(tempfile.mkdtemp(prefix="radr_invalid_vault_"))
    try:
        safe_bad, msg_bad = verify_p0_safety(invalid_vault)
        assert safe_bad is False
        assert "P0 Violation Risk" in msg_bad
    finally:
        shutil.rmtree(invalid_vault, ignore_errors=True)


def test_autoinstall_generation(mock_vault):
    out_dir = mock_vault / "devkit_test"
    res = generate_autoinstall_config(out_dir)

    assert res["status"] == "CONFIG_GENERATED"
    assert res["user"] == "architit"
    assert res["root_ssh_enabled"] is True
    assert res["python_version"] == "Python 3.12"
    assert res["pm2_configured"] is True
    assert res["rebirth_first_boot_enabled"] is True

    # Check autoinstall.yaml content
    with open(out_dir / "autoinstall.yaml", "r", encoding="utf-8") as f:
        content = f.read()
        assert "username: architit" in content
        assert "ALL=(ALL) NOPASSWD:ALL" in content
        assert "PermitRootLogin yes" in content
        assert "npm install -g pm2" in content
        assert "REBIRTH.sh" in content
        assert "radriloniuma-firstboot.service" in content

    # Check post_install_upgrade.sh
    with open(out_dir / "post_install_upgrade.sh", "r", encoding="utf-8") as f:
        script = f.read()
        assert "apt-get update" in script
        assert "apt-get dist-upgrade" in script
        assert "pm2" in script
        assert "/root/REBIRTH.sh" in script


def test_configure_bootable_structure(mock_vault):
    res = configure_bootable_structure(mock_vault)
    assert res["status"] == "BOOTABLE_STRUCTURE_CONFIGURED"
    assert res["safety_audit"] == "P0_SAFETY_CONTRACT_V1_VERIFIED"
    assert res["atesirt_vault_archive_preserved"] is True

    # Check backup exists
    assert (mock_vault / "boot" / "grub" / "grub.cfg.bak").exists()

    # Check enhanced grub.cfg
    with open(mock_vault / "boot" / "grub" / "grub.cfg", "r", encoding="utf-8") as f:
        grub = f.read()
        assert "autoinstall ds=nocloud;s=/nocloud/" in grub
        assert "Live Desktop" in grub
        assert "Windows 11 Setup Substrate" in grub

    # Check nocloud autoinstall files
    assert (mock_vault / "nocloud" / "autoinstall.yaml").exists()
    assert (mock_vault / "nocloud" / "meta-data").exists()
    assert (mock_vault / "nocloud" / "user-data").exists()
    assert (mock_vault / "post_install_upgrade.sh").exists()


def test_autoinstall_late_commands_copies_post_install_upgrade(mock_vault):
    out_dir = mock_vault / "devkit_test"
    generate_autoinstall_config(out_dir)

    with open(out_dir / "autoinstall.yaml", "r", encoding="utf-8") as f:
        content = f.read()
        assert "cp /cdrom/nocloud/post_install_upgrade.sh /target/usr/local/bin/post_install_upgrade.sh" in content
        assert "chmod 0755 /target/usr/local/bin/post_install_upgrade.sh" in content


def test_verify_iso_integrity_hash_mismatch(monkeypatch, tmp_path):
    # Create fake ISOs directory with mismatched payload
    fake_iso_dir = tmp_path / "fake_isos"
    fake_iso_dir.mkdir()
    fake_manifest = tmp_path / "fake_manifest.json"

    # Make monkeypatches
    monkeypatch.setattr(boot_gateway, "resolve_iso_dir", lambda: fake_iso_dir)
    monkeypatch.setattr(boot_gateway, "MANIFEST_FILE", fake_manifest)

    # Create dummy files for TARGET_ISOS with correct size but random content
    for item in TARGET_ISOS:
        f = fake_iso_dir / item["filename"]
        # Create a small dummy file matching byte size if small, or sparse/mocked
        f.write_text("corrupted content not matching canonical sha256")

    res = verify_iso_integrity(force_rehash=True)
    assert res["status"] == "VERIFICATION_FAILED"
    assert res["all_verified"] is False
    assert any(r["status"] in ("SIZE_MISMATCH", "HASH_MISMATCH") for r in res["results"])


def test_dedicated_usb_boot_p0_safety(tmp_path):
    dedicated_usb = tmp_path / "dedicated_usb_stick"
    dedicated_usb.mkdir()
    safe, msg = verify_p0_safety(dedicated_usb, is_dedicated_usb=True)
    assert safe is True
    assert "DEDICATED_BOOT_USB_VERIFIED_NON_DESTRUCTIVE" in msg
