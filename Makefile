build:
	docker build -t helloworld .
deploy:
	docker run -d -p 80:80 --name helloworld-service helloworld
destroy:
	docker rm -f helloworld-service || true