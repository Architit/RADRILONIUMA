# Cloud Factorio AI Sandbox: Architecture & Roadmap ⚜️

This document outlines the blueprint for hosting the Factorio simulation core on cloud servers (Google Cloud Platform, NVIDIA, etc.) and connecting it to a remote AI brain, enabling heavy modpacks and custom mod development without loading your local laptop (ASUS ROG) or phone.

---

## 1. Cloud-Edge Topology

```mermaid
graph TD
    subgraph Cloud Infrastructure (GCP / NVIDIA / AWS)
        subgraph VM Instance (GCP Compute Engine)
            Server[Factorio Headless Server]
            Saves[(Save Game: выф.zip)]
            Mods[Custom Modpack: 78+ Mods + Our Custom Mods]
            RCON[RCON Daemon: Port 27015]
            
            Server -->|Loads| Saves
            Server -->|Loads| Mods
            Server <--> RCON
        end

        subgraph AI Brain Instance (Cloud GPU/TPU)
            AI_Core[AI Learning Agent: YOLO / RL Model]
            AI_Core <-->|RCON Client| RCON
        end
    end

    subgraph User Devices (Thin Clients)
        Laptop[ASUS ROG Laptop: Factorio Client]
        Phone[Mobile Phone / ADB Interface]
        
        Laptop <-->|Join Game: Port 34197| Server
        Phone -.->|Stats Viewer / Remote Control| AI_Core
    end
```

---

## 2. Architecture Details

### A. The Server (Cloud Simulator)
*   **Hosting**: Google Cloud Platform (GCP) Compute Engine.
    *   *Instance Recommendation*: `e2-standard-4` (4 vCPUs, 16 GB RAM) or `c2-standard-4` (compute-optimized for high single-core performance, which is crucial for Factorio's single-threaded simulation loop).
*   **Role**: Processes the entire game tick loop, runs all mod scripts, and stores the master save file.
*   **Networking**: Exposes port `34197` (UDP) for game clients and port `27015` (TCP) with password authentication for RCON.

### B. The Client (Your Window)
*   **Role**: Only renders the graphics and sends keyboard/mouse inputs to the server.
*   **Resource Load**: Extremely low, as the CPU doesn't have to compute mod logic, pathfinding for thousands of entities, or logistic networks.

### C. The AI Brain (Cloud Controller)
*   **Hosting**: Google Colab (GPU) or a dedicated GCP VM with NVIDIA Tesla T4/L4 GPU.
*   **Role**: Connects directly to the RCON port of the server. Since both the server and the brain are in the cloud, latency between them is $<2\text{ ms}$.

---

## 3. Modding & Training Pipeline

To teach the AI agent, vanilla Factorio is insufficient. We will build a custom mod:
1.  **Our Custom Lua Mod (`aelaria-bridge`)**:
    *   Registers a custom remote API: `remote.add_interface("aelaria", ...)`
    *   Exposes functions to export factory layout, inventory, power grid metrics, and biter attack warnings as optimized JSON strings.
    *   Allows the AI to place blueprints and command construction bots directly via code.
2.  **Modpack Sync**:
    *   We will maintain a GitHub repository with our custom mod and mod settings.
    *   Deployments to the GCP server will be automated via git pull.

---

## 4. Implementation Roadmap

### Phase 1: GCP Dedicated Server Setup (Target: Next Step)
*   Deploy a GCP VM instance running Linux (Ubuntu).
*   Install Factorio headless server, copy the `config.ini`, 78 mods, and the `выф.zip` save.
*   Verify that you can connect to the public IP of the VM from your laptop.

### Phase 2: RCON Bridging & Custom Mod
*   Secure the RCON port with a firewall rule (only allow connections from the AI VM's IP).
*   Initialize the basic Python wrapper for RCON.
*   Create the skeleton of our custom Lua mod (`aelaria-bridge`).

### Phase 3: AI Training Harness
*   Connect Google Colab or a GPU instance to the GCP server.
*   Begin training models to optimize factory throughput or defend walls using custom mod sensors.
