# Build all containers for development
# dev-build:
docker-compose -f docker-compose.common-python.yml -f docker-compose.dev-python.yml build --no-cache

# Start all services
# dev:
docker-compose -f docker-compose.common-python.yml -f docker-compose.dev-python.yml up