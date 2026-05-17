# syntax=docker/dockerfile:1.23.0@sha256:2780b5c3bab67f1f76c781860de469442999ed1a0d7992a5efdf2cffc0e3d769

FROM aclemons/slackware:15.0-full@sha256:9f147929e2ba3857c9ae49b9a175f8a5fdcdfc5bfa0d9bf9a9a89f20055537d8

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
