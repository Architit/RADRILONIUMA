# Multi-Cloud Factorio-AI Compute Cluster ⚜️

This document outlines the distributed cluster topology using free cloud resources (Oracle Cloud Always Free, Google Colab) and local machines connected via a Tailscale private mesh network.

---

## 1. Cluster Topology

```mermaid
graph TD
    subgraph Tailscale Private Mesh Network (100.x.y.z)
        subgraph Oracle Cloud (Always Free VM - Host)
            Server[Factorio Headless Server]
            Box64[Box64 x86_64 Emulator]
            Server -->|Runs via| Box64
        end

        subgraph Google Colab (GPU/TPU Node - Brain)
            AI_Core[AI Learning Agent: YOLO/RL Model]
            AI_Core <-->|RCON Client| Server
        end

        subgraph Local Laptop (Thin Client)
            GameClient[Factorio GUI Client]
            Launcher[Cluster Launcher Shortcut]
            GameClient <-->|Join Server| Server
        end
    end
```

---

## 2. Cluster Nodes Spec

| Node Name | Hosting / Cost | Hardware Specs | Role |
| :--- | :--- | :--- | :--- |
| **Oracle Node** | Oracle Cloud Free ($0) | 4 vCPU Ampere A1 (ARM64), 24 GB RAM, 200 GB NVMe | **Game Server Host** (Runs 24/7, handles all simulation ticks) |
| **Colab Node** | Google Colab Free ($0) | 12 GB RAM, NVIDIA T4 GPU or TPU | **AI Brain & Model Training** (Connects via RCON to Oracle) |
| **Local Client** | Laptop / Mobile ($0) | Kaby Lake i7-7600U / HD 620 | **Window to the Game** (Thin rendering client) |

---

## 3. Network Routing via Tailscale (Mesh)

To connect three different clouds/networks securely without public IP exposure or complex port forwarding:
1.  **Tailscale VPN** is installed on all three nodes (Oracle, Colab, Local Laptop).
2.  Each node receives a permanent private IP in the `100.x.y.z` range (e.g., Oracle: `100.111.22.33`).
3.  All traffic is fully encrypted end-to-end, and nodes can communicate directly bypass firewalls.

---

## 4. Setting up Factorio on Oracle ARM64 (using Box64)

Since Oracle Free Tier instances use ARM64 CPUs, and Factorio is compiled for x86_64, we run the headless server via **Box64**:

1.  **Install Box64 on Oracle Ubuntu ARM64**:
    ```bash
    sudo apt install -y git build-essential cmake
    git clone https://github.com/ptitSeb/box64.git
    cd box64 && mkdir build && cd build
    cmake .. -DARM_DYNAREC=ON -DCMAKE_BUILD_TYPE=RelWithDebInfo
    make -j4
    sudo make install
    sudo systemctl restart systemd-binfmt
    ```
2.  **Run Factorio server**:
    ```bash
    box64 ./factorio/bin/x64/factorio --start-server ./saves/выф.zip --rcon-port 27015 --rcon-password secret_pass
    ```
    *Note: Box64 translates x86 instructions on the fly with low performance overhead, meaning Factorio will run near native speed on the 24 GB RAM Ampere CPU.*
