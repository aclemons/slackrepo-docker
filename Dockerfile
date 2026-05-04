# syntax=docker/dockerfile:1.23.0@sha256:2780b5c3bab67f1f76c781860de469442999ed1a0d7992a5efdf2cffc0e3d769

FROM aclemons/slackware:15.0-full@sha256:b38e0afb8d0a1cdc0769dd55dba8043d6021f4b90f3cdd8d1439fde1dff68927

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
