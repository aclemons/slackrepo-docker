# syntax=docker/dockerfile:1.25.0@sha256:0adf442eae370b6087e08edc7c50b552d80ddf261576f4ebd6421006b2461f12

FROM aclemons/slackware:15.0-full@sha256:35339b5a53ce2510146e3725d96656ab33e9ee1052586a445f3fe1c5b5aaf975

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
