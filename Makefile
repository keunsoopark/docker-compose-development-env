.PHONY: help
help:
	@echo " dev-build	to build all containers for dev environment"
	@echo " dev			to start all services"
	@echo " test		to run only unittests without brining up all services"

.PHONY: dev-build
dev-build:
	docker-compose -f docker-compose.common-python.yml -f docker-compose.dev-python.yml build --no-cache
	@echo
	@echo "Build finished."

.PHONY: dev
dev:
	docker-compose -f docker-compose.common-python.yml -f docker-compose.dev-python.yml up
	@echo
	@echo "All services are started."

.PHONY: test
test:
	docker-compose -f docker-compose.common-python.yml -f docker-compose.dev-python.yml run --rm --entrypoint pytest python $*
	@echo
	@echo "All unittests finished."