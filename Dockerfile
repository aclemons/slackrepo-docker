# syntax=docker/dockerfile:1.15.1@sha256:9857836c9ee4268391bb5b09f9f157f3c91bb15821bb77969642813b0d00518d

FROM aclemons/slackware:15.0-full@sha256:a6328d623fdc4af8357b9b908eef9eff93d41a182ba7d4a2939beec905f2c9de

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
