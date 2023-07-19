FROM aclemons/slackware:15.0-full@sha256:d4f9ecb4c8ba7b989c000f49bb01c37a585b8074a29e563bddee03fed132bf6e

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
