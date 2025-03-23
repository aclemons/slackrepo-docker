# syntax=docker/dockerfile:1.13.0@sha256:426b85b823c113372f766a963f68cfd9cd4878e1bcc0fda58779127ee98a28eb

FROM aclemons/slackware:15.0-full@sha256:24ffec78186e188cd91484f69ead4beb98d7c46c8609341e1d54cbc956fa82e6

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
