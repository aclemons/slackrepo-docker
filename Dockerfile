# syntax=docker/dockerfile:1.14.0@sha256:4c68376a702446fc3c79af22de146a148bc3367e73c25a5803d453b6b3f722fb

FROM aclemons/slackware:15.0-full@sha256:7388590c84a5cc34c343167a20d25bbf6d095fabbaa8d98c3d60c79b8a1a7ac4

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
