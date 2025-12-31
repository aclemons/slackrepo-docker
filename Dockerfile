# syntax=docker/dockerfile:1.20.0@sha256:26147acbda4f14c5add9946e2fd2ed543fc402884fd75146bd342a7f6271dc1d

FROM aclemons/slackware:15.0-full@sha256:336d66cc670c8fc708f2154f78998e644dc8bc5b212cf7589274a510acb51ef0

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
