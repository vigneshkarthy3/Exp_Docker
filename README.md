# Exp_Docker
Experiments on Docker images and containers

# Database

## Build the database image

docker build -t mysql-img:v1 .

## Run the Container

docker run -d -p 3306:3306 --name mysql_cont -e MYSQL_ROOT_PASSWORD=root mysql-img:v1

## Login to the container

docker exec -it mysql_cont bash

--------------------------------------------------------------------------------------

# Application

## Build the application image

docker build -t app-img:v1 . --build-arg HOST_NAME={IP address of mysql network}

## Run the container

docker run -d -p 8080:8080 --name app_cont app-img:v1

## Login to the container

docker exec -it app_cont bash


## Some useful commands

List all containers (only IDs) docker ps -aq.  
Stop all running containers.  
- docker stop $(docker ps -aq).  
Remove all containers.  
- docker rm -f $(docker ps -aq)
Remove all images.  
- docker rmi -f $(docker images -q)
