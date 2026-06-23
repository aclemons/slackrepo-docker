# syntax=docker/dockerfile:1.25.0@sha256:0adf442eae370b6087e08edc7c50b552d80ddf261576f4ebd6421006b2461f12

FROM aclemons/slackware:15.0-full@sha256:35c6b5565040ca6ec1c0fd084db2d1af5b0344dcd1332c35b63cda3873f50d1a

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
