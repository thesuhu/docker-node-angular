# docker-node-angular

![GitHub workflow](https://github.com/thesuhu/docker-node-angular/actions/workflows/docker-image.yml/badge.svg) ![Docker pull](https://img.shields.io/docker/pulls/thesuhu/docker-node-angular) [![license](https://img.shields.io/github/license/thesuhu/docker-node-angular)](https://github.com/thesuhu/docker-node-angular/blob/master/LICENSE)

Docker images used to create containers ready with Node.js and Angular. This docker image is recommended for development only.

## Usage

Within your Dockerfile:

```
FROM thesuhu/docker-node-angular
```

## Versions

This image is using Node.js version 14 and Angular 12.

## Example

Create Dockerfile as you need.

```
FROM thesuhu/docker-node-angular

RUN mkdir -p /usr/src/myapp
WORKDIR /usr/src/myapp

COPY <host directory>/. .

RUN npm i --verbose

CMD ng serve --host 0.0.0.0 
```

Build the Dockerfile.

```
docker build -t <image name> .
```

Then create container with mount bind to the host project directory.

```
docker run -d -p 4200:4200 -v <host directory>:/usr/src/myapp --name <container name> <image name>
```

The application will be running well and automatically restart every time there is a change in the host directory

## License

[MIT](https://github.com/thesuhu/docker-node-angular/blob/master/LICENSE)

