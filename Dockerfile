FROM aclemons/slackware:15.0-full@sha256:016a75c15e9af2d6ba6844b108834cd0c6fcba9e9296a15df9fbfe6ea8347654

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
