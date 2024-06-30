# syntax=docker/dockerfile:1.8.1@sha256:e87caa74dcb7d46cd820352bfea12591f3dba3ddc4285e19c7dcd13359f7cefd

FROM aclemons/slackware:15.0-full@sha256:8c2574f0b9aa91c5d71b8c0a6dbd11424039e597abd898f82cb95467a13f10ad

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
