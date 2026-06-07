# syntax=docker/dockerfile:1.24.0@sha256:87999aa3d42bdc6bea60565083ee17e86d1f3339802f543c0d03998580f9cb89

FROM aclemons/slackware:15.0-full@sha256:7eae90d20270aa36a24f1a26f46ae55a3bf5e7bad3db343c94e003466ec4ce53

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
