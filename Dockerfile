FROM aclemons/slackware:15.0-full@sha256:9973a6e37c4943b5eac5bc6e3480f0c928cafc1c634666a4fdd92910501f477d

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
