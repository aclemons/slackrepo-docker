# syntax=docker/dockerfile:1.8.0@sha256:d6d396f3780b1dd56a3acbc975f57bd2fc501989b50164c41387c42d04e780d0

FROM aclemons/slackware:15.0-full@sha256:d88933e405b2b272e7da1e20ec1f302f41b16e1fbdcffbb11c5e55f9a11e5dd4

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
