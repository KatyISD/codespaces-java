FROM alpine:3.23

RUN apk update \
  && apk upgrade \
  && apk add --no-cache ca-certificates \
  && update-ca-certificates \
  && apk add --no-cache coreutils openjdk25-jdk tzdata curl unzip bash git nss \
  && rm -rf /var/cache/apk/*
