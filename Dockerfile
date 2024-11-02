FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD [ "node","server.js" ]

# at this point if I save a file and shut the container I won't use the file,
# but if I delelte the container, I will lose it( the file is actually stored in
# the container itself so stopping it won't remove the file)