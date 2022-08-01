
# importing base image of node
FROM node:10

# Create app directory, If not set, Docker creates it by default
WORKDIR /home/sample-node-app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# Install the dependencies
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose the port 8080 for internal network communication. Nothing to do with connection with Host Machine
EXPOSE 8080

# command to run
CMD [ "npm", "start" ]
