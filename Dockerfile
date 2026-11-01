# syntax=docker/dockerfile:1.28.0@sha256:bb22d9815c728170f72750f4e5b0d672e06176142e1d602c7e66c050100b7e5b

FROM aclemons/slackware:15.0-full@sha256:9e3b06fafe7126fc9c1fe703e3fc63da2f9ebef1e60c27e08a71b2fa859ce49c

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
