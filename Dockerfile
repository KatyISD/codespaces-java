FROM alpine:3.20

RUN  apk update \
  && apk upgrade \
  && apk add ca-certificates \
  && update-ca-certificates \
  && apk add --update coreutils && rm -rf /var/cache/apk/*   \ 
  && apk add --update openjdk21 tzdata curl unzip bash \
  && apk add --no-cache git \
  && apk add --no-cache nss \
  && rm -rf /var/cache/apk/*