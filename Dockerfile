# syntax=docker/dockerfile:1.28.0@sha256:bb22d9815c728170f72750f4e5b0d672e06176142e1d602c7e66c050100b7e5b

FROM aclemons/slackware:15.0-full@sha256:f5c9df9564fe404621ca671c1f492d6810838aef15c8925b274afe2f06c55d14

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
