FROM node:22

# Install required packages (consolidated into one layer)
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       libaio1 \
       build-essential \
       unzip \
       curl \
       apt-utils \
       vim \
       iputils-ping \
    && rm -rf /var/lib/apt/lists/*

# install angular
RUN npm install -g @angular/cli@17.0.8
RUN ng version

# install ts-node
RUN npm install -g ts-node

RUN mkdir -p /usr/src/myapp
WORKDIR /usr/src/myapp
