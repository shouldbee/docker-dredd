IMAGE := shouldbee/dredd

build:
	sudo docker build -t $(IMAGE) .
