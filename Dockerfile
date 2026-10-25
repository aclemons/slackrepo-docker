# syntax=docker/dockerfile:1.28.0@sha256:bb22d9815c728170f72750f4e5b0d672e06176142e1d602c7e66c050100b7e5b

FROM aclemons/slackware:15.0-full@sha256:ec677a42daf2e8589226c55003ba70a694d8b5f60a968985a8e24fe9fd8c1cec

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
