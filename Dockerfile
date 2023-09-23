FROM aclemons/slackware:15.0-full@sha256:2ec6e878c739f94b085f1ccb8773b173ff36993861c53f316837afdb22aaca7d

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
