# syntax=docker/dockerfile:1.18.0@sha256:dabfc0969b935b2080555ace70ee69a5261af8a8f1b4df97b9e7fbcf6722eddf

FROM aclemons/slackware:15.0-full@sha256:0cecb878099a7cb42b940d856c51c45fa1dbd22865f8a4e79b3cf6c4f2b268c4

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
