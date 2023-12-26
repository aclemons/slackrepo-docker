# syntax=docker/dockerfile:1.6.0@sha256:ac85f380a63b13dfcefa89046420e1781752bab202122f8f50032edf31be0021

FROM aclemons/slackware:15.0-full@sha256:966073be92ac9a9a60ea8a170525f148c2acef577a9136375ee9abd42d5a13a2

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
