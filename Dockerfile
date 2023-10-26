FROM node:18-alpine

RUN apk add --no-cache libc6-compat python3 py3-pip make g++
COPY . .
RUN yarn install
RUN yarn build

EXPOSE 3000

CMD ["node", "server.js"]