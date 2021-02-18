build:
	docker build -t askomorokhov/async-fastapi-mongo .

run:
	docker run -p 8000:8000 askomorokhov/async-fastapi-mongo

push:
	docker push askomorokhov/async-fastapi-mongo

up:
	docker-compose up -d
	docker-compose ps

start:
	minikube start

apply:
	kubectl apply -f deployment/async-fastapi-mongo-service.yaml,deployment/async-fastapi-mongo-deployment.yaml,deployment/mongo-service.yaml,deployment/mongo-deployment.yaml,deployment/pmm-client-deployment.yaml,deployment/pmm-server-service.yaml,deployment/pmm-server-deployment.yaml

port-forward:
	kubectl get svc
	kubectl port-forward svc/async-fastapi-mongo 8000:8000

delete:
	minikube delete