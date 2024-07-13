# syntax=docker/dockerfile:1.9.0@sha256:fe40cf4e92cd0c467be2cfc30657a680ae2398318afd50b0c80585784c604f28

FROM aclemons/slackware:15.0-full@sha256:9bbb3dcc85a9175b08f8e285f33fdea19986d13a54f8fa37d1887e315e772d86

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
