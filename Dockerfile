FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

ENV PORT 80

EXPOSE $PORT

CMD [ "node","server.js" ]

# used the below command for using the env variable
# docker build -t feedback-image .
# another way is to create .env file and run
# docker run -d -p 3000:8000 --env-file ./.env --name feedback-container -v feedback:/app/feedback feedback-image