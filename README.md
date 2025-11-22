# Minecraft Game Server 

A fully containerized Minecraft Java Edition server using Docker and Docker Compose.

## Overview
- Custom image built from the included `Dockerfile`
- `docker-compose.yaml` defines the `mc-server` service
- `start.sh` entrypoint initializes and starts the server
- `server/` holds generated world data and configuration
- `example.env` shows available environment variables and example values

## Requirements
- Docker Compose

## Quickstart

1. Create and edit `.env`:
   - Linux/macOS: `cp example.env .env`
   - Windows PowerShell: `copy .\example.env .env`

2. Build and run (detached optional):
   - `docker compose up --build [-d]` build and start the mc server 
3. Connect from Minecraft Java Edition:
    - Multiplayer → Add Server
    - Server Address: `localhost:${MC_HOST_PORT}`
## Usage 
- **Start:**
    - `docker compose up [-d]` starts the mc-server when its already built
    - `-d` optional flag (detached) Starts containers in the background and returns control to your shell.
    - `--build`  forces rebuild of images before starting containers.


- **Stop:**
    - `docker compose down` stops the mc-server when its already is running  
- **Logs:**
    - `docker compose logs [-f]` prints the Server Logs 
    - `-f` optional flag (follow) streams log output in real time


## Configuration
 ### Environment Variables (`.env`)

These variables configure the Minecraft server. They are loaded through Docker Compose and applied by `start.sh` when generating `server.properties`.

| Variable | Description | Default |
|---------|-------------|---------|
| **MC_HOST_PORT** | Port exposed on your host machine. Players connect to this port. | `8888` |
| **MC_PORT** | Internal container port the Minecraft server listens on. | `25565` |
| **MC_MOTD** | Message shown in the Minecraft server browser. | `Minecraft Default Message from compose` |
| **MC_MAX_PLAYERS** | Maximum number of players allowed. | `20` |
| **MC_IDLE_TIMEOUT** | Minutes before idle players are kicked. | `10` |

Edit these in your `.env` file before launching the server.

---

### Server Settings (`server/server.properties`)

`server.properties` is the main configuration file for a Minecraft Java Edition server.  
It controls gameplay and server behavior.
this file is **auto-generated on first run** based on environment variables.  

📘 **Full official list of all server.properties settings:**  
https://minecraft.wiki/w/Server.properties

### EULA (`server/eula.txt`)

the EULA is a legal agreement that you must accept before using Minecraft, defining the rules for how you are allowed to use the game and its server software.

- Your `start.sh` script **automatically creates** this file.
- The EULA is **automatically accepted** so the server can run without user interaction.

📘 **Official EULA: (must read before start server)**  
https://www.minecraft.net/eula  

## Ports
can be changed using env:
{MC_HOST_PORT}:{MC_CONTAINER_PORT}  → if keep Default 8888:25565

## Volumes
Named volume:
    `mc-server:/app/server`

