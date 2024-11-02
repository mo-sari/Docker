FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD [ "node","server.js" ]

# docker volume ls ===> we have only one volume which is anonymous
# now if we run this command :
    # docker run -d -p 3000:80 --name feedback-ctn --rm -v feedback:/app/feedback feedback
# we create a named volume which accomplishes the exact thing we were looking for
# now again go : docker volume ls