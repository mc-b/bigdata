FROM node

MAINTAINER Marcel mc-b Bernet <marcel.bernet@ch-open.ch>

ARG VERSION=3.2.0

LABEL version=$VERSION

RUN npm install --global gitbook-cli &&\
	gitbook fetch ${VERSION} &&\
	npm cache clear &&\
	rm -rf /tmp/*

WORKDIR /srv/gitbook

VOLUME /srv/gitbook 

EXPOSE 4000 

CMD /usr/local/bin/gitbook serve