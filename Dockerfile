# syntax=docker/dockerfile:1.10.0@sha256:865e5dd094beca432e8c0a1d5e1c465db5f998dca4e439981029b3b81fb39ed5

FROM aclemons/slackware:15.0-full@sha256:d7caf2d659c4733fe0dbe8a5a3cf9e8773b566aa244f4560a2a08acc6d5633e9

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
