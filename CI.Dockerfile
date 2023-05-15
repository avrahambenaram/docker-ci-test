FROM --platform=$BUILDPLATFORM node:16.19.1-alpine3.16
WORKDIR /app
COPY . .
RUN yarn

CMD [ "npm", "run", "build" ]