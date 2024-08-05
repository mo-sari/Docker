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
# docker run -d -p 3000:8000 --env PORT=8000 --name feedback-container -v feedback:/app/feedback feedback-image
# or
# docker run -d -p 3000:8000 -e PORT=8000 --name feedback-container -v feedback:/app/feedback feedback-image