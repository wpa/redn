# VERSION 0.1
# DOCKER-VERSION 1.7.1
# To build:
# 1. Install docker (http://docker.io)
# 2. Checkout source: git@github.com:wpa/redn.git
# 3. Build container: docker build .

FROM alpine

RUN apk add --update nodejs
RUN apk add --update git

RUN apk add --update python

RUN npm install -g node-red


EXPOSE 1880
CMD ["node-red"]

