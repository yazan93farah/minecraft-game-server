FROM eclipse-temurin:21-jre

WORKDIR /app
COPY . . 
RUN chmod +x start.sh
EXPOSE 1234
ENTRYPOINT ["./start.sh"]
