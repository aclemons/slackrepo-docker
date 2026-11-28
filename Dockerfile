# syntax=docker/dockerfile:1.29.0@sha256:572cebbc2b15e6f84c077742952674889cb63cd5e9b80abdffcbe587b6f19183

FROM aclemons/slackware:15.0-full@sha256:9e3b06fafe7126fc9c1fe703e3fc63da2f9ebef1e60c27e08a71b2fa859ce49c

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
