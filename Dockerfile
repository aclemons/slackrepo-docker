# syntax=docker/dockerfile:1.13.0@sha256:426b85b823c113372f766a963f68cfd9cd4878e1bcc0fda58779127ee98a28eb

FROM aclemons/slackware:15.0-full@sha256:7388590c84a5cc34c343167a20d25bbf6d095fabbaa8d98c3d60c79b8a1a7ac4

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
