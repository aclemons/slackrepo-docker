FROM aclemons/slackware:15.0-full@sha256:28dc4f1c52b60e7e86e9ac508fb649336c8395cbde25b03f3d30c03166e59d4d

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
