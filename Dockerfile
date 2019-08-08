FROM alpine:edge

RUN apk add --no-cache murmur

ADD mumble-server.ini /config/mumble-server.ini

VOLUME /data /config
EXPOSE 64738 64738/udp

CMD ["/usr/bin/murmurd", "-fg", "-ini", "/config/mumble-server.ini"]
