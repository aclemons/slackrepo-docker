# syntax=docker/dockerfile:1.25.0@sha256:0adf442eae370b6087e08edc7c50b552d80ddf261576f4ebd6421006b2461f12

FROM aclemons/slackware:15.0-full@sha256:2a2f282d288f2d63174a3c98145d5576a3ad4393d35a9315fe3a7446dd5b8f1b

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
