# syntax=docker/dockerfile:1.27.0@sha256:bde3983e9c939224420ddaf6b784cc30e09b035a4dea01f581230c50809f372e

FROM aclemons/slackware:15.0-full@sha256:f5c9df9564fe404621ca671c1f492d6810838aef15c8925b274afe2f06c55d14

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
