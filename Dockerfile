FROM aclemons/slackware:15.0-full@sha256:3904fe0b955fb088113724a4e5d4cc3b8c9e2a29f7d27f376d91d6e534b3c622

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
