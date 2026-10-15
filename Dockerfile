FROM alpine:3.20

RUN apk update \
  && apk upgrade \
  && apk add --no-cache ca-certificates coreutils curl unzip bash git nss tzdata openjdk25-jdk \
  && update-ca-certificates \
  && rm -rf /var/cache/apk/*
