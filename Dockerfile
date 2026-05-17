# syntax=docker/dockerfile:1.24.0@sha256:87999aa3d42bdc6bea60565083ee17e86d1f3339802f543c0d03998580f9cb89

FROM aclemons/slackware:15.0-full@sha256:9f147929e2ba3857c9ae49b9a175f8a5fdcdfc5bfa0d9bf9a9a89f20055537d8

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
