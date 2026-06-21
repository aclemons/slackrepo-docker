# syntax=docker/dockerfile:1.24.0@sha256:87999aa3d42bdc6bea60565083ee17e86d1f3339802f543c0d03998580f9cb89

FROM aclemons/slackware:15.0-full@sha256:35c6b5565040ca6ec1c0fd084db2d1af5b0344dcd1332c35b63cda3873f50d1a

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
