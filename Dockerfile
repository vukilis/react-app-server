FROM node:17.3.0-buster-slim

WORKDIR /app

#cache
#package.json /app/package.json, we are already in /app directory
COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install

#copy local to working directory
COPY . .

CMD ["npm", "run", "start"]