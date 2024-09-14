FROM node:18-alpine
WORKDIR /usr/src/app
COPY . .
RUN npm install -g http-server
EXPOSE 80
CMD [ "http-server", ".", "-p", "80" ]

