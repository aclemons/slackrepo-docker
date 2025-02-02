# syntax=docker/dockerfile:1.13.0@sha256:426b85b823c113372f766a963f68cfd9cd4878e1bcc0fda58779127ee98a28eb

FROM aclemons/slackware:15.0-full@sha256:eb98c1e5813138f6ffd7017169e6e8dbd47dcaa4e2021b3e06d125582f59f8b6

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
