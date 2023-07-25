FROM aclemons/slackware:15.0-full@sha256:de216543783393afab395189797f37fd0d3714e7fc695cefdaea64daea2a0a0c

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
