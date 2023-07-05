FROM aclemons/slackware:15.0-full@sha256:6a6a0c1a81e10aff96086ef4e792839e61367633dff637c42ab708e01fb26323

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
