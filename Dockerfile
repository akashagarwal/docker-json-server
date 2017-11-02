FROM node:latest
MAINTAINER Christian Lück <christian@lueck.tv>

RUN npm install -g json-server


EXPOSE 80
ADD run.sh /run.sh
ADD db.json /db.json

ENTRYPOINT ["json-server", "-p","80","/db.json"]
CMD []
