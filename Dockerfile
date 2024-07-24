FROM node
# just the base image we're building our own custom image based on
WORKDIR /app
# spcifying where these files should be located
COPY . /app
# copying all the files into the directory we specified above( need all the code)
RUN npm install
# install all the needed packages in the image( need all the dependencies)
EXPOSE 80
# remember containers run in Isolation, so we expose them
CMD [ "node","server.js" ]
# when we want to run a command not inside the image, instead when a container was built
# we would use CMD