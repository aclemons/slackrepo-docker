FROM aclemons/slackware:15.0-full@sha256:a51626218d3385ca340649c1d1b476e7cf5ede9b42823e32776fe5cf8ba841e4

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
