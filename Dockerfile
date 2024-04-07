# syntax=docker/dockerfile:1.7.0@sha256:dbbd5e059e8a07ff7ea6233b213b36aa516b4c53c645f1817a4dd18b83cbea56

FROM aclemons/slackware:15.0-full@sha256:4bb1ca6ef0482bb612396fa22ae82a58e2f0225487c1ee12d426a7fd88bbc993

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
