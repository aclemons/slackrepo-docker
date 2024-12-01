# syntax=docker/dockerfile:1.12.0@sha256:db1ff77fb637a5955317c7a3a62540196396d565f3dd5742e76dddbb6d75c4c5

FROM aclemons/slackware:15.0-full@sha256:98225045a7b7b181c8d5f605f179fe092c0d61a0e4bfdb0162f020474e1c4da5

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
