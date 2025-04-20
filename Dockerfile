# syntax=docker/dockerfile:1.15.0@sha256:05e0ad437efefcf144bfbf9d7f728c17818408e6d01432d9e264ef958bbd52f3

FROM aclemons/slackware:15.0-full@sha256:cbccdaff080dd4de2c6a7ce84484fb031a4f86f9a29b4877378089fc4331c492

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
