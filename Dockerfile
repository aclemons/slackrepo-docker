# syntax=docker/dockerfile:1.20.0@sha256:26147acbda4f14c5add9946e2fd2ed543fc402884fd75146bd342a7f6271dc1d

FROM aclemons/slackware:15.0-full@sha256:33f57475efcd392ce61df1bf5d63488834fd3eac7c54abe8a0ba3b3c3ccd4984

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
