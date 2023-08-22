FROM aclemons/slackware:15.0-full@sha256:d620024a02c9b2eeca6ea6dad9bd077375814c91bf0b8ebcab62e54f26648f83

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
