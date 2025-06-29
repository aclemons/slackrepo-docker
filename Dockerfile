# syntax=docker/dockerfile:1.16.0@sha256:e2dd261f92e4b763d789984f6eab84be66ab4f5f08052316d8eb8f173593acf7

FROM aclemons/slackware:15.0-full@sha256:4369bb5a88b65f5112cbfbe9b35f0da0f1611ed9c14167a71e342514b2697496

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
