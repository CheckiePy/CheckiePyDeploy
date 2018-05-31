FROM node:9.4
RUN chown -R node:node /usr/local/lib/node_modules && chown -R node:node /usr/local/bin
USER node
RUN npm install -g @angular/cli@1.6
USER root
RUN ng set --global packageManager=npm
WORKDIR /frontend/
