# docker-node-angular
# docker-node-angular

![GitHub workflow](https://github.com/thesuhu/docker-node-angular/actions/workflows/docker-image.yml/badge.svg) 
![Docker pull](https://img.shields.io/docker/pulls/thesuhu/docker-node-angular) 
[![license](https://img.shields.io/github/license/thesuhu/docker-node-angular)](https://github.com/thesuhu/docker-node-angular/blob/master/LICENSE)

Docker images used to create containers ready with Node.js and Angular. This docker image is recommended for development only.

## Usage

Run the container with:

```sh
docker run -d -t -p <host port>:<your app port> -v <your app host dir>:/usr/src/myapp --name <your container name> thesuhu/docker-node-angular:{TAG}
```

Specify the Angular version you will use in the above *{TAG}*. Angular versions 9, 12, 14, 15 and 17 are available.

| Image Tag | Node     | Angular  |
|-----------|----------|----------|
| latest    | v22.0.0  | v17.0.8  |
| 17.2      | v22.0.0  | v17.0.8  |
| 17.1      | v20.13.1 | v17.0.8  |
| 17        | v18.20.0 | v17.0.8  |
| 15        | v16.16.0 | v15.0.5  |

## Example

```sh
docker run -d -t -p 4200:4200 -v /home/thesuhu/helloworld:/usr/src/myapp --name frontend thesuhu/docker-node-angular:17
```

Once the container is running, open a terminal inside the container and run `npm i`.

To start your application run:

```sh
ng serve --host 0.0.0.0 --disable-host-check
```

The application will automatically restart every time there is a change in the host directory.

## License

[MIT](https://github.com/thesuhu/docker-node-angular/blob/master/LICENSE)

