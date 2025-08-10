# syntax=docker/dockerfile:1.17.1@sha256:38387523653efa0039f8e1c89bb74a30504e76ee9f565e25c9a09841f9427b05

FROM aclemons/slackware:15.0-full@sha256:bd678fdde562d2fc0ce7a08ca6d67d2358983f937bef2d6cd536b2050c238612

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
