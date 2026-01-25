# syntax=docker/dockerfile:1.21.0@sha256:27f9262d43452075f3c410287a2c43f5ef1bf7ec2bb06e8c9eeb1b8d453087bc

FROM aclemons/slackware:15.0-full@sha256:336d66cc670c8fc708f2154f78998e644dc8bc5b212cf7589274a510acb51ef0

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
