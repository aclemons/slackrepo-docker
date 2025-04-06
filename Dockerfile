# syntax=docker/dockerfile:1.14.0@sha256:4c68376a702446fc3c79af22de146a148bc3367e73c25a5803d453b6b3f722fb

FROM aclemons/slackware:15.0-full@sha256:cbccdaff080dd4de2c6a7ce84484fb031a4f86f9a29b4877378089fc4331c492

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
