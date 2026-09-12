# syntax=docker/dockerfile:1.27.0@sha256:bde3983e9c939224420ddaf6b784cc30e09b035a4dea01f581230c50809f372e

FROM aclemons/slackware:15.0-full@sha256:35339b5a53ce2510146e3725d96656ab33e9ee1052586a445f3fe1c5b5aaf975

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
