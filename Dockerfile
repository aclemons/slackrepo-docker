# syntax=docker/dockerfile:1.7.1@sha256:a57df69d0ea827fb7266491f2813635de6f17269be881f696fbfdf2d83dda33e

FROM aclemons/slackware:15.0-full@sha256:90ec67607fa194f57944ac8d87225a93f98adc74360c72a8333978635b49eb4a

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
