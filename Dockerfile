# syntax=docker/dockerfile:1.14.0@sha256:4c68376a702446fc3c79af22de146a148bc3367e73c25a5803d453b6b3f722fb

FROM aclemons/slackware:15.0-full@sha256:24ffec78186e188cd91484f69ead4beb98d7c46c8609341e1d54cbc956fa82e6

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
