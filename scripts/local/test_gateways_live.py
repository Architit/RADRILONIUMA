import sys
import os
import time
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../global')))
from transport_gateways import discover_best_gateway, USBGateway, WiFiGateway, BluetoothGateway

def run_live_test(wifi_ip, bt_mac):
    print("=======================================")
    print("🚀 RADRILONIUMA GATEWAY LIVE TEST")
    print("=======================================")
    print(f"Target Wi-Fi IP: {wifi_ip}")
    print(f"Target Bluetooth MAC: {bt_mac}")
    print("---------------------------------------")
    
    print("Scanning for available transport gateways...\n")
    best_gateway = discover_best_gateway(wifi_ip, bt_mac)
    
    if best_gateway:
        if isinstance(best_gateway, USBGateway):
            print("✅ CONNECTED VIA: [USB CABLE]")
            print("   Speed: Max | Security: High")
        elif isinstance(best_gateway, WiFiGateway):
            print("✅ CONNECTED VIA: [WI-FI TCP]")
            print("   Speed: High | Security: Network Bound")
        elif isinstance(best_gateway, BluetoothGateway):
            print("✅ CONNECTED VIA: [BLUETOOTH RFCOMM]")
            print("   Speed: Low | Security: High (Direct P2P)")
        print("\nGateway Handshake SUCCESS. Ready for data transmission.")
    else:
        print("❌ ALL GATEWAYS FAILED. Target unreachable.")
        print("   Please ensure at least one transport layer is active.")

if __name__ == "__main__":
    # Ensure arguments are provided
    if len(sys.argv) < 3:
        print("Usage: python3 test_gateways_live.py <WIFI_IP> <BLUETOOTH_MAC>")
        sys.exit(1)
        
    run_live_test(sys.argv[1], sys.argv[2])
