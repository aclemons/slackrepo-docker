# syntax=docker/dockerfile:1.17.1@sha256:38387523653efa0039f8e1c89bb74a30504e76ee9f565e25c9a09841f9427b05

FROM aclemons/slackware:15.0-full@sha256:e70e93506e40a468ec943b69a838b4374bb083cb12efa5ca68b6ac82edc4e068

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
