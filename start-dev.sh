# Build all containers for development
# dev-build:
  docker-compose -f docker-compose.common-python.yml -f docker-compose.dev-python.yml build 

# Start all services
# --no-cachedev:
  docker-compose -f docker-compose.common-python.yml -f docker-compose.dev-python.yml up
