FROM node

WORKDIR /app

COPY packages.json /app

RUN npm install

COPY . /app

EXPOSE 80

CMD [ "node","server.js" ]
