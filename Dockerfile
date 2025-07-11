# syntax=docker/dockerfile:1.17.1@sha256:38387523653efa0039f8e1c89bb74a30504e76ee9f565e25c9a09841f9427b05

FROM aclemons/slackware:15.0-full@sha256:4369bb5a88b65f5112cbfbe9b35f0da0f1611ed9c14167a71e342514b2697496

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
