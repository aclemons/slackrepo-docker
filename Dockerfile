# syntax=docker/dockerfile:1.7.1@sha256:a57df69d0ea827fb7266491f2813635de6f17269be881f696fbfdf2d83dda33e

FROM aclemons/slackware:15.0-full@sha256:292ba34c881d89f871282c57ce591af8e2e4e8c2f6afce1851424b66b941ce37

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
