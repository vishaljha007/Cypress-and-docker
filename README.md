# Cypress-and-docker
RSDA Cypress


--Run command "npm i" - to install all the dependency 
--setting up docker 

1.Install Docker:
Ensure that you have Docker installed on your system. You can download Docker Desktop for Windows or macOS or install Docker Engine on Linux from the official Docker website: https://www.docker.com/get-started

2.Create a Dockerfile:
Create a Dockerfile in your project's root directory. This file defines how your Docker 
--refer to the docker file in the root directory 

3.build new docker image 
    docker build -t my-cypress-image .  //replace my-cypress-image with you desired image name 
4.Run docker image 
docker run -it --rm --name image 
        Replace image with your desired container name.
        This command will start a Docker container based on your image and execute Cypress tests within it.

