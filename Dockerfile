FROM aclemons/slackware:15.0-full@sha256:df72b6004b863074ab2256de8245cee74c03f0909b70e00d8a683215d2533941

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
