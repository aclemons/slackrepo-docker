FROM aclemons/slackware:15.0-full@sha256:99b99fd6d0ac0f97b54dea1fddaf5bc83e35b5db3f39be8e1ceb51bebc577118

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
