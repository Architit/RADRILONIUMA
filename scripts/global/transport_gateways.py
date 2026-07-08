# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
"""
Multi-Transport Gateway implementation for Zero-Trust Biometric Bridge.
Supports USB, Wi-Fi, and Bluetooth transport layers.
"""
# pylint: disable=too-few-public-methods, broad-exception-caught

import socket
import subprocess
import time
import logging

class TransportGateway:
    def __init__(self, target_address, port=9090):
        self.target_address = target_address
        self.port = port
        self.connected = False

    def send_handshake(self):
        raise NotImplementedError("Subclasses must implement send_handshake")

class USBGateway(TransportGateway):
    def send_handshake(self):
        try:
            # ADB Reverse forwarding is handled by the caller or UDEV, just connect to localhost
            with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
                s.settimeout(5.0)
                s.connect(('127.0.0.1', self.port))
                s.sendall(b'HANDSHAKE_REQUEST')
                self.connected = True
                return True
        except Exception as e:
            logging.error("USB Gateway failed: %s", e)
            return False

class WiFiGateway(TransportGateway):
    def send_handshake(self):
        try:
            # Connect directly to the phone's IP over Wi-Fi
            with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
                s.settimeout(5.0)
                s.connect((self.target_address, self.port))
                s.sendall(b'HANDSHAKE_REQUEST')
                self.connected = True
                return True
        except Exception as e:
            logging.error("Wi-Fi Gateway failed: %s", e)
            return False

class BluetoothGateway(TransportGateway):
    def __init__(self, target_address, channel=1):
        super().__init__(target_address)
        self.channel = channel

    def send_handshake(self):
        try:
            # AF_BLUETOOTH and BTPROTO_RFCOMM are specific to Linux/PyBluez natively
            # Fallback to mock for testing if socket constants are missing
            if hasattr(socket, 'AF_BLUETOOTH'):
                with socket.socket(socket.AF_BLUETOOTH, socket.SOCK_STREAM, socket.BTPROTO_RFCOMM) as s:
                    s.settimeout(10.0)
                    s.connect((self.target_address, self.channel))
                    s.sendall(b'HANDSHAKE_REQUEST')
                    self.connected = True
                    return True
            else:
                logging.warning("Bluetooth sockets not natively supported in this python build.")
                return False
        except Exception as e:
            logging.error("Bluetooth Gateway failed: %s", e)
            return False

def discover_best_gateway(wifi_ip, bluetooth_mac):
    """Fallback logic: USB -> Wi-Fi -> Bluetooth"""
    usb = USBGateway('127.0.0.1')
    if usb.send_handshake():
        return usb

    wifi = WiFiGateway(wifi_ip)
    if wifi.send_handshake():
        return wifi

    bt = BluetoothGateway(bluetooth_mac)
    if bt.send_handshake():
        return bt

    return None
