build:
	docker build -t meonkeys/boring-logger .

run-fg:
	docker run --rm -it meonkeys/boring-logger

run-bg:
	docker run --detach=true --name=boring-logger meonkeys/boring-logger
	docker logs -f boring-logger

ps:
	docker ps

logs:
	docker logs boring-logger

stop:
	docker rm -f boring-logger
