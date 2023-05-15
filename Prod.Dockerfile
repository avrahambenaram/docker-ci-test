# Compiling stage
FROM --platform=$BUILDPLATFORM node:16.19.1-alpine3.16 as compiling
WORKDIR /app
COPY . .
RUN yarn
RUN npm run build

# Production stage
FROM --platform=$BUILDPLATFORM node:16.19.1-alpine3.16 as production
WORKDIR /app
COPY . .
RUN rm -rf src scripts
RUN npm i --omit=dev
CMD npm start

LABEL description="CI Test Docker Server"