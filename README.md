# mkcert-docker

> A fast and simple way to generate CA and SSL certificates for your local dev environment

### How to run

__Create CA and PEM certificate__

```
docker run -v $PWD:/opt/mkcert/out bourke/mkcert-docker:latest \
certfile.pem keyfile.pem localhost.dev"
```
