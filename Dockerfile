# syntax=docker/dockerfile:1.7.0@sha256:dbbd5e059e8a07ff7ea6233b213b36aa516b4c53c645f1817a4dd18b83cbea56

FROM aclemons/slackware:15.0-full@sha256:e98ace1a696331863615c2ce2ea28902d4efb8ee4f90cb17b6c4798d09fbc128

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
