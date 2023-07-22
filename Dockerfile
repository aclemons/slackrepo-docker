FROM aclemons/slackware:15.0-full@sha256:9197ad2a8293c2ad8ac770ce5a7f97e4ce9ba5a9b6871f0fcc76118e0de3c6b9

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
