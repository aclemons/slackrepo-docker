# syntax=docker/dockerfile:1.7.1@sha256:a57df69d0ea827fb7266491f2813635de6f17269be881f696fbfdf2d83dda33e

FROM aclemons/slackware:15.0-full@sha256:d88933e405b2b272e7da1e20ec1f302f41b16e1fbdcffbb11c5e55f9a11e5dd4

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
