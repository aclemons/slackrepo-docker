# syntax=docker/dockerfile:1.6.0@sha256:ac85f380a63b13dfcefa89046420e1781752bab202122f8f50032edf31be0021

FROM aclemons/slackware:15.0-full@sha256:279614d5899144b1f95c99b816d5b6f969fb9f3cc558f1f61db08e07e4ccf263

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
