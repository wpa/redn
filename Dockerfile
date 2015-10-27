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
RUN apk add --update make
RUN apk add --update g++
RUN apk add --update krb5-libs
RUN apk add --update krb5-dev

RUN npm install mongodb

RUN npm install -g node-red
RUN cd /usr/lib/node_modules/node-red; npm install node-red-node-mongodb
RUN apk del krb5-dev

EXPOSE 1880
CMD ["node-red"]

