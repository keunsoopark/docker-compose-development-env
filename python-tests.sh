# When you want to run Python unittests only without bringing up all your services
#!/bin/bash
docker-compose -f docker-compose.common-python.yml -f docker-compose.dev-python.yml run --rm --entrypoint pytest python $*
