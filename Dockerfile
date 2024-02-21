# syntax=docker/dockerfile:1.6.0@sha256:ac85f380a63b13dfcefa89046420e1781752bab202122f8f50032edf31be0021

FROM aclemons/slackware:15.0-full@sha256:de07315d9aa7a5f533eb29d730fc99e3b1c9cb1b0185240708d48eb48d2b2074

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
