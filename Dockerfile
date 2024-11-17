# syntax=docker/dockerfile:1.11.0@sha256:1f2be5a2aa052cbd9aedf893d17c63277c3d1c51b3fb0f3b029c6b34f658d057

FROM aclemons/slackware:15.0-full@sha256:98225045a7b7b181c8d5f605f179fe092c0d61a0e4bfdb0162f020474e1c4da5

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
