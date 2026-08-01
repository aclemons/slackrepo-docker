# syntax=docker/dockerfile:1.26.0@sha256:ecfaec9ed6d810b56388c508f4121597bfbba70d41a6dfeee4d8cad5f295fc32

FROM aclemons/slackware:15.0-full@sha256:35339b5a53ce2510146e3725d96656ab33e9ee1052586a445f3fe1c5b5aaf975

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
