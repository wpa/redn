build:
	docker build -t wrpa/redn .

start:
	docker run -p 5003:1880 -d wrpa/redn
