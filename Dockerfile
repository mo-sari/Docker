FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

ARG DEFAULT_PORT=80

ENV PORT $DEFAULT_PORT

EXPOSE $PORT

CMD [ "node","server.js" ]
# ARG's are only available in Dockerfile, and you can declare them anywhere 
# but define them in a place that would be optimze(since it's a new layer!!)
# now we can build images just noraml, or specify a 
# internal output in build command like below:
    # docker build -t <name> --build-arg DEFAULT_PORT=<port>
# and then again expose the default internal port in docker run
# or expose it to another port.