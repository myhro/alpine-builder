FROM alpine:edge

COPY repositories /etc/apk/repositories

RUN apk add --update-cache \
      alpine-conf \
      alpine-sdk \
    && setup-apkcache /var/cache/apk

RUN adduser -D builder \
    && addgroup builder abuild \
    && echo 'builder ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

USER builder
RUN abuild-keygen -a -i -n
