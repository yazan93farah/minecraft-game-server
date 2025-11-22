FROM eclipse-temurin:21-jre

WORKDIR /app
COPY server.jar .
COPY start.sh .

ENV MC_HOST_PORT=8888\
    MC_MOTD="Minecraft Default Message" \
    MC_MAX_PLAYERS="20" \
    MC_CONTAINER_PORT="25565" \
    MC_PLAYER_IDLE_TIMEOUT="10"
RUN chmod +x start.sh
EXPOSE ${MC_CONTAINER_PORT}
ENTRYPOINT ["./start.sh"]
