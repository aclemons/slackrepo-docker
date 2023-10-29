FROM aclemons/slackware:15.0-full@sha256:3ee6beb7520c073cea1abb308c508bbe6133a77e66eea7db9257f81ef568f3f7

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
