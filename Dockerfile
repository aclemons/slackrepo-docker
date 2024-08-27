# syntax=docker/dockerfile:1.9.0@sha256:fe40cf4e92cd0c467be2cfc30657a680ae2398318afd50b0c80585784c604f28

FROM aclemons/slackware:15.0-full@sha256:73a652d6ec5db33e8cbeeb331d5cb23db402182f46f8d0ea3b846d70a46fd922

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
