mkdir -p server
echo "eula=true" > server/eula.txt
echo "EULA accepted. Starting Minecraft server..."
cd server
exec java -jar ../server.jar nogui