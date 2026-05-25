# syntax=docker/dockerfile:1.24.0@sha256:87999aa3d42bdc6bea60565083ee17e86d1f3339802f543c0d03998580f9cb89

FROM aclemons/slackware:15.0-full@sha256:e5196108717a958dd2e4104f3052fdcd372071ad927dab4aba28d2f29f447e7d

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
