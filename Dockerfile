FROM alpine

RUN apk add alsa-lib

COPY asound.conf /etc/asound.conf