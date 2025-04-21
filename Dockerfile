# syntax=docker/dockerfile:1

FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
EXPOSE 8080  # Ensure port 8080 is exposed (Cloud Run requires this)
CMD ["node", "src/index.js"]
