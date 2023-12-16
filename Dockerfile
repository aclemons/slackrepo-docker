FROM aclemons/slackware:15.0-full@sha256:f7552b91e61d2bea8a5263d2de9c53c7b63e09ff51dd3846fb30eb1a8906d03b

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
