FROM node:16              # Sets the base image
WORKDIR /app             # Sets the working directory in the container
COPY package.json /app   # copy the dependencies file to the working directory
RUN npm install          # Install dependencies
COPY . /app       # Copy the content of the local src directory to the working directory
EXPOSE 4200
CMD ["npm", "run", "start"]
