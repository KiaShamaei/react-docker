FROM node:18.16.1-alpine3.17
WORKDIR /app

COPY *.json .
RUN npm install

COPY . .
ARG PORT=3000
EXPOSE ${PORT}
CMD [ "npm" , "start" ]