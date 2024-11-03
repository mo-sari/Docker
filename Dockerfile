FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

VOLUME [ "/app/node_modules" ]

CMD [ "node","server.js" ]

# when we bind mount, we lose some stuff like node_modules because we override
# the content of the /app directory in our container with the files and folders 
# in our project directory, to prevent that we create another volume( an anonymous one)
# and tell docker to copy the node_modules to that volume and leave it alone( do not override it
# with the bind mount)