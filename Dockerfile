FROM node:10-alpine
ENV APP_ROOT /web
ENV NODE_ENV production
WORKDIR ${APP_ROOT}
ADD ./app ${APP_ROOT}
RUN npm install
RUN npm run build
CMD ["npm", "run", "start"]
