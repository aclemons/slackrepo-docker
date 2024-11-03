# syntax=docker/dockerfile:1.11.0@sha256:1f2be5a2aa052cbd9aedf893d17c63277c3d1c51b3fb0f3b029c6b34f658d057

FROM aclemons/slackware:15.0-full@sha256:f1c3f290df79229432e2c05a7f0d4ff176b813640a4c50059f256c104c44410d

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
