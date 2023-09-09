FROM aclemons/slackware:15.0-full@sha256:03ec1679d30907037ab42b550414cda506e6dafbf7422f89aac4c5ba086b283b

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
