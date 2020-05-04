FROM alpine

RUN apk add alsa-lib nodejs yarn

COPY asound.conf /etc/asound.conf