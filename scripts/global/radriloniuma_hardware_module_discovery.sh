#!/bin/bash
# ==============================================================================
# RADRILONIUMA • JARVIS OS PERIPHERAL MODULE DISCOVERY & GITHUB/INTERNET SYNC
# Queries & loads OS modules for: Phone, Headphones, 2 Keyboards, Mice,
# Touchpad, Touchscreen, Wi-Fi/LAN, Camera, Storage, and pulls GitHub packages.
# ==============================================================================
set -e
LOG_FILE="/var/log/radriloniuma_hardware_discovery.log"
exec > >(tee -a "$LOG_FILE") 2>&1

echo "⚜️ [$(date -u)] RADRILONIUMA ROOT TREE BRANCH -> HARDWARE PERIPHERAL MODULE DISCOVERY STARTED"

for DRV_PATH in "/opt/radriloniuma_drivers/install_all_drivers.sh" "/cdrom/GOD_SEED_INIT/DRIVERS_BUNDLE/install_all_drivers.sh" "/mnt/f/GOD_SEED_INIT/DRIVERS_BUNDLE/install_all_drivers.sh"; do
    if [ -f "$DRV_PATH" ]; then
        bash "$DRV_PATH" || true
        break
    fi
done

echo ">>> [SCAN] Enumerating PCI, USB, Input, and Bluetooth devices..."
lspci -nnk 2>/dev/null || true
lsusb 2>/dev/null || true
cat /proc/bus/input/devices 2>/dev/null || true

echo ">>> [NET] Bringing up network interfaces for Internet & GitHub package synchronization..."
rfkill unblock all 2>/dev/null || true
ip link show | awk -F: '$0 !~ "lo|vir|wl|^[^0-9]"{print $2;getline}' | while read -r iface; do
    iface=$(echo "$iface" | xargs)
    ip link set "$iface" up 2>/dev/null || true
    dhclient "$iface" 2>/dev/null || networkctl reconfigure "$iface" 2>/dev/null || true
done

export DEBIAN_FRONTEND=noninteractive
if ping -c 1 -W 3 8.8.8.8 >/dev/null 2>&1 || ping -c 1 -W 3 github.com >/dev/null 2>&1; then
    echo ">>> [ONLINE] Internet connection verified! Downloading OS modules & peripheral packages..."
    apt-get update -y
    # Resilient grouped package installation for all peripherals & runtimes
    PACKAGES=(
        "linux-firmware" "intel-microcode"
        "adb" "fastboot" "scrcpy" "gvfs-backends" "libmtp-runtime" "jmtpfs"
        "pipewire" "pipewire-pulse" "wireplumber" "libspa-0.2-bluetooth" "bluez" "bluez-tools" "pulseaudio-utils" "alsa-utils"
        "kbd" "console-setup" "xkb-data" "x11-xkb-utils" "libinput-tools" "xserver-xorg-input-libinput"
        "mesa-vulkan-drivers" "intel-media-va-driver"
        "network-manager" "wpasupplicant" "rfkill" "iw" "ethtool" "v4l-utils" "exfatprogs" "ntfs-3g"
        "python3" "python3-pip" "python3-venv" "python3-pil" "python3-tk"
        "nodejs" "npm" "git" "curl" "wget" "jq" "htop" "net-tools" "openssh-server" "rclone"
        "xclip" "xsel" "wl-clipboard" "scrot" "imagemagick" "ffmpeg"
    )
    for pkg in "${PACKAGES[@]}"; do
        apt-get install -y "$pkg" 2>/dev/null || true
    done

    echo ">>> [GITHUB] Connecting to https://github.com to synchronize RADRILONIUMA Root Tree Branch & modules..."
    if [ -d "/root/RADRILONIUMA/.git" ]; then
        cd /root/RADRILONIUMA
        git fetch --all --prune 2>/dev/null || true
    fi
else
    echo ">>> [OFFLINE MODE] No immediate external internet detected; relying on USB /opt/radriloniuma_drivers bundle."
fi

if command -v bluetoothctl >/dev/null 2>&1; then
    echo ">>> [BLUETOOTH] Registering & trusting connected Bluetooth peripherals..."
    systemctl enable --now bluetooth 2>/dev/null || true
    for MAC in "18:26:54:2B:60:6A" "88:D0:39:A1:12:09" "DB:9A:DA:2E:72:C5" "10:11:B4:19:00:04" "13:05:AA:00:02:D8" "C0:D5:E2:B6:6F:AE"; do
        bluetoothctl trust "$MAC" 2>/dev/null || true
    done
fi

echo "✅ [$(date -u)] RADRILONIUMA HARDWARE MODULE DISCOVERY & GITHUB SYNC COMPLETED (528 Hz)."
