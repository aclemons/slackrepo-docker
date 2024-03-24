# syntax=docker/dockerfile:1.7.0@sha256:dbbd5e059e8a07ff7ea6233b213b36aa516b4c53c645f1817a4dd18b83cbea56

FROM aclemons/slackware:15.0-full@sha256:0eedecd89c48255a58e42915d209df2cd073e4fdf772b1c20ae27ea90cd1eaac

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
