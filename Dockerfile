# syntax=docker/dockerfile:1.7.1@sha256:a57df69d0ea827fb7266491f2813635de6f17269be881f696fbfdf2d83dda33e

FROM aclemons/slackware:15.0-full@sha256:f7bde9c9e7fa1d5618d233c141d748154d1d261a4c8eaf84400f9ccad50d048a

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
