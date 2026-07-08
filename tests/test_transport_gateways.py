# Copyright (c) 2026-06-07 RADRILONIUMA / TRIANIUMA Kingdom. All rights reserved.
"""
Tests for Multi-Transport Gateway (USB, Wi-Fi, Bluetooth).
"""
# pylint: disable=missing-function-docstring

import unittest
from unittest.mock import patch, MagicMock
import sys
import os
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../scripts/global')))
from transport_gateways import USBGateway, WiFiGateway, BluetoothGateway, discover_best_gateway

class TestTransportGateways(unittest.TestCase):
    
    @patch('socket.socket')
    def test_usb_gateway_success(self, mock_socket):
        mock_sock_instance = MagicMock()
        mock_socket.return_value.__enter__.return_value = mock_sock_instance
        
        gw = USBGateway('127.0.0.1', 9090)
        result = gw.send_handshake()
        
        self.assertTrue(result)
        self.assertTrue(gw.connected)
        mock_sock_instance.connect.assert_called_once_with(('127.0.0.1', 9090))
        mock_sock_instance.sendall.assert_called_once_with(b'HANDSHAKE_REQUEST')

    @patch('socket.socket')
    def test_wifi_gateway_success(self, mock_socket):
        mock_sock_instance = MagicMock()
        mock_socket.return_value.__enter__.return_value = mock_sock_instance
        
        gw = WiFiGateway('192.168.1.50', 9090)
        result = gw.send_handshake()
        
        self.assertTrue(result)
        self.assertTrue(gw.connected)
        mock_sock_instance.connect.assert_called_once_with(('192.168.1.50', 9090))

    @patch('socket.socket')
    def test_bluetooth_gateway_success(self, mock_socket):
        mock_sock_instance = MagicMock()
        mock_socket.return_value.__enter__.return_value = mock_sock_instance
        
        import socket
        # Only run assert if the system supports BT (Linux)
        if hasattr(socket, 'AF_BLUETOOTH'):
            gw = BluetoothGateway('00:11:22:33:44:55', 1)
            result = gw.send_handshake()
            
            self.assertTrue(result)
            self.assertTrue(gw.connected)
            mock_sock_instance.connect.assert_called_once_with(('00:11:22:33:44:55', 1))

    @patch('transport_gateways.USBGateway.send_handshake')
    @patch('transport_gateways.WiFiGateway.send_handshake')
    @patch('transport_gateways.BluetoothGateway.send_handshake')
    def test_gateway_fallback_logic(self, mock_bt, mock_wifi, mock_usb):
        # Scenario 1: USB works
        mock_usb.return_value = True
        best = discover_best_gateway('192.168.1.50', '00:11:22:33:44:55')
        self.assertIsInstance(best, USBGateway)
        
        # Scenario 2: USB fails, WiFi works
        mock_usb.return_value = False
        mock_wifi.return_value = True
        best = discover_best_gateway('192.168.1.50', '00:11:22:33:44:55')
        self.assertIsInstance(best, WiFiGateway)

        # Scenario 3: USB and WiFi fail, BT works
        mock_wifi.return_value = False
        mock_bt.return_value = True
        best = discover_best_gateway('192.168.1.50', '00:11:22:33:44:55')
        self.assertIsInstance(best, BluetoothGateway)

if __name__ == '__main__':
    unittest.main()
