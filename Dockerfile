FROM eclipse-temurin:21-jre

WORKDIR /app
COPY server.jar .
COPY start.sh . 
RUN chmod +x start.sh
EXPOSE 25565
ENTRYPOINT ["./start.sh"]
