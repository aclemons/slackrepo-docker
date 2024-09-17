# syntax=docker/dockerfile:1.10.0@sha256:865e5dd094beca432e8c0a1d5e1c465db5f998dca4e439981029b3b81fb39ed5

FROM aclemons/slackware:15.0-full@sha256:a6d752fbda3dc677200d939972ce0d3e05783a9ea87cf5bc9c3322a26d09d886

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
