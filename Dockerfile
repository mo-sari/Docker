FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

VOLUME [ "/app/node_modules" ]

CMD [ "node","server.js" ]

# Bind Mount for the Project Directory (-v "C:\Users\Mohcen\Desktop\Docker:/app"):
#     When you mount your local project directory to /app in the container, Docker replaces the container's /app contents with what’s in your host directory (your local project files).
    
#     Volume for node_modules (-v /app/node_modules):
#     Adding -v /app/node_modules as an anonymous volume tells Docker to keep node_modules separate in its own storage space. This is why node_modules in the container doesn't get overridden by the bind mount, allowing the container to manage dependencies independently of your local system.
    
#     Creation of Empty node_modules on Your Host:
#     When Docker sets up the bind mount for C:\Users\Mohcen\Desktop\Docker:/app, it mirrors the structure of /app in your host directory. Since there’s a node_modules directory expected in /app due to your volume configuration, Docker creates an empty node_modules folder on your host if it doesn’t already exist. This is simply a placeholder; the actual contents are managed in Docker’s anonymous volume and won’t populate on your host.