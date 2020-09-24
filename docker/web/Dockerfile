FROM node:10.15.0-alpine

RUN apk add --no-cache bash

WORKDIR /app

COPY ./app /app

RUN npm ci
RUN npm run build
CMD ["npm", "run", "start"]