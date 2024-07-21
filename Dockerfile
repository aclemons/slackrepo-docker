# syntax=docker/dockerfile:1.9.0@sha256:fe40cf4e92cd0c467be2cfc30657a680ae2398318afd50b0c80585784c604f28

FROM aclemons/slackware:15.0-full@sha256:bbfc2a9c49fabeabb88f5645411b899c76a7535a808504f2709963e2a1e8c56d

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
