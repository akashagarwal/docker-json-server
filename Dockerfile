FROM node:latest
MAINTAINER Christian Lück <christian@lueck.tv>

RUN npm install -g json-server

WORKDIR /data
VOLUME /data

EXPOSE 80
ADD run.sh /run.sh
ADD db.json /data/db.json
ENTRYPOINT ["bash", "/run.sh"]
CMD []
