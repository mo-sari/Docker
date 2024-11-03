FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

VOLUME [ "/app/node_modules" ]

CMD [ "node","server.js" ]

# read these parts:
    # ReadOnly volumes.
    # Managing volumes, deleting them, createing one or inspecting....
    # BindMounts are not in the list of volumes, since docker does not manage them, we are !
    # Copy vs BindMout...
    # .dockerignore
    # ENV and ARG