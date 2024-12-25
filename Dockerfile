# syntax=docker/dockerfile:1.11.1@sha256:10c699f1b6c8bdc8f6b4ce8974855dd8542f1768c26eb240237b8f1c9c6c9976

FROM aclemons/slackware:15.0-full@sha256:f507fb3515f305f35cebc4923b4523180e53ad0cb1c1cfd20f8d8e4db4d6d8e9

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
