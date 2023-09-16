FROM aclemons/slackware:15.0-full@sha256:1f36bd7e98a65492b8ec9664e6163deb3b71ead70af6e3aeb6553451e0e87f17

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
