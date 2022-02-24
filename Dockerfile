FROM node:latest as node
RUN mkdir -p /nodeapp
WORKDIR /nodeapp
COPY ./app/package*.json /nodeapp/
RUN npm install 
COPY ./app /nodeapp/
EXPOSE 3000
CMD ["npm", "run", "start"]
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz