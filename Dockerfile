FROM eclipse-temurin:21-jre

WORKDIR /app
COPY . . 
RUN chmod +x start.sh
EXPOSE 25565
ENTRYPOINT ["./start.sh"]
