# syntax=docker/dockerfile:1.10.0@sha256:865e5dd094beca432e8c0a1d5e1c465db5f998dca4e439981029b3b81fb39ed5

FROM aclemons/slackware:15.0-full@sha256:5c208a725f334cda5e6e7ce862f5925f53539958f6b8744b55b5501763d11416

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
