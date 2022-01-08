FROM node:17.3.0-buster-slim as build

WORKDIR /app

#cache
#package.json /app/package.json, we are already in /app directory
COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install

#copy local to working directory
COPY . .

RUN npm run build

# nginx Web Server
FROM nginx:1.21.5-alpine as production

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]