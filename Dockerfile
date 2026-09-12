# syntax=docker/dockerfile:1.26.0@sha256:ecfaec9ed6d810b56388c508f4121597bfbba70d41a6dfeee4d8cad5f295fc32

FROM aclemons/slackware:15.0-full@sha256:f5c9df9564fe404621ca671c1f492d6810838aef15c8925b274afe2f06c55d14

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
