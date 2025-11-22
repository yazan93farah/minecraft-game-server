#!/bin/sh

mkdir -p server
echo "eula=true" > server/eula.txt
echo "EULA accepted. Starting Minecraft server..."

MC_MOTD_ENV=${MC_MOTD:-"Minecraft Server"}
MC_MAX_PLAYERS_ENV=${MC_MAX_PLAYERS:-20}
MC_CONTAINER_PORT_ENV=${MC_CONTAINER_PORT:-25565}
MC_PLAYER_IDLE_TIMEOUT_ENV=${MC_PLAYER_IDLE_TIMEOUT:-10}

cat > server/server.properties <<EOF
motd=${MC_MOTD_ENV}
max-players=${MC_MAX_PLAYERS_ENV}
server-port=${MC_CONTAINER_PORT_ENV}
player-idle-timeout=${MC_PLAYER_IDLE_TIMEOUT_ENV}
EOF

cd server
exec java -jar ../server.jar nogui