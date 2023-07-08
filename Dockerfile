FROM aclemons/slackware:15.0-full@sha256:b6995643dafe5bdb3272b0e2d6e0ee3f837e4635780c6d294a49f2e7ab85df7c

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
