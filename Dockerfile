FROM alpine:3.10

ENV VERSION 4.20.0

WORKDIR /usr/local/bin

RUN apk add zip \
    && wget -q https://github.com/v2ray/v2ray-core/releases/download/v${VERSION}/v2ray-linux-64.zip \
    && unzip v2ray-linux-64.zip \
    && chmod +x v2ray v2ctl \
    && rm *.zip 

ENTRYPOINT ["v2ray"]
