# syntax=docker/dockerfile:1.9.0@sha256:fe40cf4e92cd0c467be2cfc30657a680ae2398318afd50b0c80585784c604f28

FROM aclemons/slackware:15.0-full@sha256:8c2574f0b9aa91c5d71b8c0a6dbd11424039e597abd898f82cb95467a13f10ad

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
