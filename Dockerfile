FROM aclemons/slackware:15.0-full@sha256:abb9d2ecfa4ebe11d58a2f15d5fab1e91d4693973b56286d6542de7f1a5beaba

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
