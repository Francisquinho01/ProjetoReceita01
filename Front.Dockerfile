FROM node:16.2.0
WORKDIR /usr/src/app
# Install dependencies
COPY ./frontend/package*.json ./
RUN npm install
# Bundle app source
COPY ./frontend .
# Expose container port 3000
EXPOSE 3000
# Run "start" script in package.json
CMD ["npm", "start"]