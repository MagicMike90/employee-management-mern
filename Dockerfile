FROM node:boron

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY ./app/package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY ./app /usr/src/app

EXPOSE 8000
EXPOSE 8080
CMD [ "npm", "start" ]
