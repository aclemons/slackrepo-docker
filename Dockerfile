# syntax=docker/dockerfile:1.11.1@sha256:10c699f1b6c8bdc8f6b4ce8974855dd8542f1768c26eb240237b8f1c9c6c9976

FROM aclemons/slackware:15.0-full@sha256:98225045a7b7b181c8d5f605f179fe092c0d61a0e4bfdb0162f020474e1c4da5

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
