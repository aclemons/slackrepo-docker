# syntax=docker/dockerfile:1.24.0@sha256:87999aa3d42bdc6bea60565083ee17e86d1f3339802f543c0d03998580f9cb89

FROM aclemons/slackware:15.0-full@sha256:03c87f8de387fc67b0d18025b9768b36cbc622f2c5ab25253bf90db96210913a

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
