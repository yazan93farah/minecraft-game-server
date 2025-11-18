# Minecraft Game Server 

A fully containerized Minecraft Java Edition server using Docker and Docker Compose.

## Overview
- Custom image built from the included `Dockerfile`
- `docker-compose.yaml` defines the `minecraft` service
- `start.sh` entrypoint initializes and starts the server
- `server/` holds generated world data and configuration

## Requirements
- Docker Desktop
- Docker Compose

## Quickstart
Build and run (detached optional):
    `docker compose up --build [-d]`

Connect from Minecraft Java Edition:
- Multiplayer → Add Server
- Server Address: `localhost:8888`

## Usage
Start:
    `docker compose up -d`

Stop:
    `docker compose down`

Logs (follow):
    `docker compose logs -f`

## Configuration
Server settings:
    `server/server.properties`

EULA (auto-set to true during image build check start.sh):
    `server/eula.txt`

Startup script:
    `start.sh` contains the commands to launch the server successfuly.

## Ports
Host:Container → 8888:25565

## Volumes
Host mount:
    `./server:/app/server`

