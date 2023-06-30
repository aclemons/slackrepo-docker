ARG base_image=aclemons/slackware:15.0-full@sha256:3904fe0b955fb088113724a4e5d4cc3b8c9e2a29f7d27f376d91d6e534b3c622
# hadolint ignore=DL3006
FROM $base_image

ARG base_image
RUN echo "Using base image $base_image"

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh
RUN if [ "$(uname -m)" = "aarch64" ] ; then echo "export AARCH64=1" >> /etc/slackrepo/slackrepo_ponce.conf ; fi

CMD ["su", "-"]
