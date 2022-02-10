# docker-node-angular

![GitHub workflow](https://github.com/thesuhu/docker-node-angular/actions/workflows/docker-image.yml/badge.svg) ![Docker pull](https://img.shields.io/docker/pulls/thesuhu/docker-node-angular) [![license](https://img.shields.io/github/license/thesuhu/docker-node-angular)](https://github.com/thesuhu/docker-node-angular/blob/master/LICENSE)

Docker images used to create containers ready with Node.js and Angular. This docker image is recommended for development only. This image is using Node.js version 14 and Angular 12.

## Usage

Within your Dockerfile:

```
FROM thesuhu/docker-node-angular
```

## Example

Don't forget to create `.dockerignore` file if using `COPY . .` command.

```
<host directory>/node_modules
<host directory>/.git
<host directory>/.gitignore
```

And then create `Dockerfile` as you need.

```
FROM thesuhu/docker-node-angular

RUN mkdir -p /usr/src/myapp
WORKDIR /usr/src/myapp

COPY <host directory>/package*.json ./

RUN npm i --verbose

COPY <host directory>/. .

CMD ng serve 
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

