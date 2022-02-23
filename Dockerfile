FROM node:latest as node
RUN mkdir -p /nodeapp
WORKDIR /nodeapp
COPY ./app/package*.json /nodeapp/
RUN npm install 
COPY ./app /nodeapp/
EXPOSE 3000
CMD ["npm", "run", "start"]