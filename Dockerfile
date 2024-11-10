# syntax=docker/dockerfile:1.11.1@sha256:10c699f1b6c8bdc8f6b4ce8974855dd8542f1768c26eb240237b8f1c9c6c9976

FROM aclemons/slackware:15.0-full@sha256:629687ccbb1cebe946cacb1fa592bc6e4d6f490dc053ce6d39466f1bceae853a

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
