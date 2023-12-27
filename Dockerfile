# syntax=docker/dockerfile:1.6.0@sha256:ac85f380a63b13dfcefa89046420e1781752bab202122f8f50032edf31be0021

FROM aclemons/slackware:15.0-full@sha256:ccb21e6091182ea1462dcf023c0fad4e6b7251abc639194fcc1899343b7c019b

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
