FROM node:16.19.1-alpine3.16
WORKDIR /app
COPY . .

CMD [ "./scripts/start.sh" ]