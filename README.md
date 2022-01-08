# Containerizing a React.js Application

This is a self project where we can run react app in docker container as a production environment.

## React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).  
App is running on [nginx](https://www.nginx.com/) server.

## Build and Run App

```
$ git clone https://github.com/vukilis/react-app-server
$ docker build -t react-app-server:[tag] .
$ docker run -d --name [name] -p 3000:80 react-app-server:[tag]
```
Open [localhost:3000](localhost:3000)

## Docker image 
Download and run basic react app
```
$ docker pull vukilis/react-app-server:1.0.0
$ docker run -d --name [name] -p 3000:80 vukilis/react-app-server:1.0.0
```