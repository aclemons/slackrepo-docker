# syntax=docker/dockerfile:1.15.1@sha256:9857836c9ee4268391bb5b09f9f157f3c91bb15821bb77969642813b0d00518d

FROM aclemons/slackware:15.0-full@sha256:cbccdaff080dd4de2c6a7ce84484fb031a4f86f9a29b4877378089fc4331c492

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
