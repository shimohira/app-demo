FROM node:8.5.0

COPY . /source

WORKDIR /source

EXPOSE 9000

RUN npm install && npm install -g pm2
RUN npm run build

CMD ["pm2-docker", "start", "dist/bin/server.js"]
