FROM aclemons/slackware:15.0-full@sha256:97e028cc45bf2d978db5a24a3ee8bac9c959c33be377bc4415c6ad73bf3ecc83

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
