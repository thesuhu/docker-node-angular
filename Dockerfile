FROM node:14

RUN apt-get update \
    && apt-get install -y libaio1 \
    && apt-get install -y build-essential \
    && apt-get install -y unzip \
    && apt-get install -y curl \
    && apt-get install -y apt-utils

# install angular
RUN npm install -g @angular/cli@9.0.7
RUN ng version

# install ts-node
RUN npm install -g ts-node

RUN mkdir -p /usr/src/myapp
WORKDIR /usr/src/myapp
