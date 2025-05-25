# syntax=docker/dockerfile:1.16.0@sha256:e2dd261f92e4b763d789984f6eab84be66ab4f5f08052316d8eb8f173593acf7

FROM aclemons/slackware:15.0-full@sha256:a6328d623fdc4af8357b9b908eef9eff93d41a182ba7d4a2939beec905f2c9de

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
