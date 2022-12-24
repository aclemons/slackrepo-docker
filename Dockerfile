ARG base_image=aclemons/slackware:15.0-full
# hadolint ignore=DL3006
FROM $base_image

ARG base_image
RUN echo "Using base image $base_image"

COPY scripts/install_slackrepo.sh /
RUN bash /install_slackrepo.sh && rm /install_slackrepo.sh
RUN if [ "$(uname -m)" = "aarch64" ] ; then echo "export AARCH64=1" >> /etc/slackrepo/slackrepo_ponce.conf ; fi

CMD ["su", "-"]
