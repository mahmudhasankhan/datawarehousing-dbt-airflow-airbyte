
echo "Current Directory: $PWD"

docker compose up -d

sleep 5

cd airbyte

echo "Current Directory: $PWD"

# Check if docker-compose.yml exists in the current directory
if [ -f "docker-compose.yaml" ]; then
  # If it exists, run docker-compose up
  docker-compose up -d
else
  # Otherwise, run the setup script
  ./run-ab-platform.sh
fi
