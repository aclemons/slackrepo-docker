# syntax=docker/dockerfile:1.17.1@sha256:38387523653efa0039f8e1c89bb74a30504e76ee9f565e25c9a09841f9427b05

FROM aclemons/slackware:15.0-full@sha256:6b05b0e79b40edfd4e5a97ee96dd0d72f55175a606d7f3b2978f72725fa901c0

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
