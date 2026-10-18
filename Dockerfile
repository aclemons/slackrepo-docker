# syntax=docker/dockerfile:1.28.0@sha256:bb22d9815c728170f72750f4e5b0d672e06176142e1d602c7e66c050100b7e5b

FROM aclemons/slackware:15.0-full@sha256:32bf4054c70b6da814b166f2293064db2482131cc338edfd92ef0f522dea3543

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
