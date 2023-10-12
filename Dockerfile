FROM aclemons/slackware:15.0-full@sha256:2524d06c67c701601d7f0b36224d58938e0cf76c7eac49a2ec32ab52fb78a8bd

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
