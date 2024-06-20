# syntax=docker/dockerfile:1.8.1@sha256:e87caa74dcb7d46cd820352bfea12591f3dba3ddc4285e19c7dcd13359f7cefd

FROM aclemons/slackware:15.0-full@sha256:d88933e405b2b272e7da1e20ec1f302f41b16e1fbdcffbb11c5e55f9a11e5dd4

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
