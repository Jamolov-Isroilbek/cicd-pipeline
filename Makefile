# Deployment commands for Docker Swarm
#
# Usage:
#   make deploy      - Deploy the application
#   make monitoring  - Deploy monitoring stack
#   make down        - Remove all stacks

STACK=hello
PROJECT_PATH=/home/vagrant/cicd-pipeline

deploy:
	docker stack deploy --with-registry-auth -c $(PROJECT_PATH)/docker-compose.yaml $(STACK)

monitoring:
	docker stack deploy --with-registry-auth -c $(PROJECT_PATH)/monitoring/docker-compose.yaml $(STACK)

down:
	docker stack rm $(STACK)

.PHONY: deploy monitoring down
