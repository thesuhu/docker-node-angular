FROM node:14

RUN export DEBIAN_FRONTEND=noninteractive 

RUN apt-get update \
    && apt-get install -y libaio1 \
    && apt-get install -y build-essential \
    && apt-get install -y unzip \
    && apt-get install -y curl \
    && apt-get install -y apt-utils

# install angular
RUN npm install -g @angular/cli@12.0.1
RUN ng -v