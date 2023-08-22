FROM node:14
FROM ubuntu:16.04
RUN apt-get update 
RUN sudo apt-get install xvfb
CMD /bin/bash


COPY cypress.json ./

# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app


# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port used by your application (if necessary)
# EXPOSE 8080

# Run Cypress tests (customize this command according to your setup)
CMD ["npm", "test"]
