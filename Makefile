build: environment
	docker build --network=hnetwork -t helloworld .
environment:
	docker-compose up -d
	sleep 5
destroy-environment:
	docker-compose down || true
deploy:
	docker run -d -p 80:80 --name helloworld-service helloworld
destroy:
	docker rm -f helloworld-service || true