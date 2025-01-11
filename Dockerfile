# syntax=docker/dockerfile:1.12.1@sha256:93bfd3b68c109427185cd78b4779fc82b484b0b7618e36d0f104d4d801e66d25

FROM aclemons/slackware:15.0-full@sha256:eb98c1e5813138f6ffd7017169e6e8dbd47dcaa4e2021b3e06d125582f59f8b6

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
