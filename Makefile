IMAGE := shouldbee/dredd

build:
	sudo docker build -t $(IMAGE) .

test:
	sudo docker run --rm $(IMAGE) node -v         | grep v0.10.25
	sudo docker run --rm $(IMAGE) npm -v          | grep 1.3.10
	sudo docker run --rm $(IMAGE) dredd --version | grep v0.3.9

push: test
	sudo docker push $(IMAGE)
