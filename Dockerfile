FROM node:4.2

ADD . /srv

WORKDIR /srv

RUN npm install

CMD node_modules/.bin/gulp server