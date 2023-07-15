FROM aclemons/slackware:15.0-full@sha256:116696963be762f1422bee3190aec58ef42fe61952977d43ffa26b35fcb6f3b2

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
