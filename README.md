# Audio in Docker container

## Configure

Find you sound card ID by running `aplay -l` (either on the host and inside the container but in this last case you'll need ton install `alsa-utils`).

Duplicate `asound.conf.sample` into `asound.conf` and change the occurences of `0` into the ID you got from the previous command.

## Build container image

`docker build -t sound .`

## Run container

`docker run --device=/dev/snd -it --rm sound /bin/ash`

You can start recording audio with `node index.js` and the play it back with `play examples-recordings/some_audio_file.wav`.