FROM aclemons/slackware:15.0-full@sha256:b8d7660a505a3113d0194b1d7d77328165e7bc4e1493f25e4783fff1436b8eb4

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
