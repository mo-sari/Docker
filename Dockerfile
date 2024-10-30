FROM node

# all the commands will run in the root directory of the container if we dont' specify the working directory ourselves
WORKDIR /app

COPY . .

RUN npm install

EXPOSE 80 
# this expose command doesn't actually do anything and it's just kind of a reminder to know what port should we use while running a docker container

# run differs from cmd, run is executed while the image is being created but cmd will run when lunching a container based on that image
CMD ["node", "server.js"]
# cmd always must be the last command in our dockerfile