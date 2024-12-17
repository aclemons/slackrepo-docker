# syntax=docker/dockerfile:1.12.1@sha256:93bfd3b68c109427185cd78b4779fc82b484b0b7618e36d0f104d4d801e66d25

FROM aclemons/slackware:15.0-full@sha256:f507fb3515f305f35cebc4923b4523180e53ad0cb1c1cfd20f8d8e4db4d6d8e9

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
