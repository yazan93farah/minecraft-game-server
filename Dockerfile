FROM eclipse-temurin:21-jre

WORKDIR /app
COPY server.jar .
COPY start.sh .

ENV MY_MC_PORT=8888\
    MC_MOTD="Minecraft Default Message" \
    MC_MAX_PLAYERS="20" \
    MC_SERVER_PORT="25565" \
    MC_PLAYER_IDLE_TIMEOUT="10"
RUN chmod +x start.sh
EXPOSE ${MC_SERVER_PORT}
ENTRYPOINT ["./start.sh"]
