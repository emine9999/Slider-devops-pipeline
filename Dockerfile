FROM node:18-alpine
WORKDIR /usr/src/app
RUN npm install
COPY . .
RUN npm install -g http-server
EXPOSE 80
CMD [ "http-server", "dist", "-p", "80" ]
