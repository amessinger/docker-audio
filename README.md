# WEB RTC in Docker container

## Build container image
`docker build -t sound .`

## Configure

Find you sound card ID by running `aplay -l` (works both on the host and inside the container but you'll need ton install `alsa-utils` in this case).

If the ID is different from `0`, duplicate `asound.conf.sample` into `asound.conf` and change occurences of `0` into the ID you got from the previous command.

## Run container

If you didn't have to create a custom `asound.conf` file, run `docker run --device=/dev/snd -it --rm sound /bin/ash`.

Else run `docker run --device=/dev/snd -v $(pwd)/asound.conf:/etc/asound.conf -v /some/audio/file.mp3:/test.mp3 -it --rm sound /bin/ash`
