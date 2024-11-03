# syntax=docker/dockerfile:1.10.0@sha256:865e5dd094beca432e8c0a1d5e1c465db5f998dca4e439981029b3b81fb39ed5

FROM aclemons/slackware:15.0-full@sha256:629687ccbb1cebe946cacb1fa592bc6e4d6f490dc053ce6d39466f1bceae853a

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
