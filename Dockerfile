FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

VOLUME [ "/app/feedback" ]

CMD [ "node","server.js" ]

# added a volume that was supposed to copy and keep the file's created in our special
# directory inside the container(/app/feedback) in a directory on our host machine,
# so we would'nt loose the file's in the container got deleted, but it's still not 
# working, why? we'll see.