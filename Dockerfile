# syntax=docker/dockerfile:1

FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN yarn install --production

# Cloud Run requires port 8080
EXPOSE 8080

CMD ["node", "src/index.js"]
