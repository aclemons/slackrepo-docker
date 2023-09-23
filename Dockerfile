FROM aclemons/slackware:15.0-full@sha256:9566e5598d3136c0b877a3f41935d691fb67d805178fb6316a843e5d1e19d745

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
