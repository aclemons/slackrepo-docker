FROM aclemons/slackware:15.0-full@sha256:a495370c8c7ea5ebd5f9465528d72d0c8affad51a713b31d1e9ea128d527c8aa

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
