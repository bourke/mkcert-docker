FROM alpine:3.15.4 AS build

RUN mkdir -p /opt/mkcert/out

RUN apk --no-cache add curl
RUN curl -JLO "https://dl.filippo.io/mkcert/v1.4.4?for=linux/amd64" && \
    chmod +x mkcert-v1.4.4-linux-amd64
RUN ln -s mkcert-v1.4.4-linux-amd64 ./mkcert

COPY entrypoint.sh ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
