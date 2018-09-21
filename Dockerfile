FROM alpine:edge

COPY repositories /etc/apk/repositories

RUN apk update
RUN apk add alpine-conf alpine-sdk

RUN setup-apkcache /var/cache/apk

RUN adduser -D builder
RUN addgroup builder abuild
RUN echo 'builder ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
