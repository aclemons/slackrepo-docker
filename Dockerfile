# syntax=docker/dockerfile:1.23.0@sha256:2780b5c3bab67f1f76c781860de469442999ed1a0d7992a5efdf2cffc0e3d769

FROM aclemons/slackware:15.0-full@sha256:7c61ec229d87049a06786cd8ea3828a55f2865c95501f7e5e2978779c203a866

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
