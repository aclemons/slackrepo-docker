# syntax=docker/dockerfile:1.7.0@sha256:dbbd5e059e8a07ff7ea6233b213b36aa516b4c53c645f1817a4dd18b83cbea56

FROM aclemons/slackware:15.0-full@sha256:acb7d1ff0086010eecfd3a021d9021eaa2580253db8b3f24568df7c8fcac78ac

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
