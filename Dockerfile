# syntax=docker/dockerfile:1.12.1@sha256:93bfd3b68c109427185cd78b4779fc82b484b0b7618e36d0f104d4d801e66d25

FROM aclemons/slackware:15.0-full@sha256:98225045a7b7b181c8d5f605f179fe092c0d61a0e4bfdb0162f020474e1c4da5

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
