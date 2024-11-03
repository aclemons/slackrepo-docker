# syntax=docker/dockerfile:1.11.0@sha256:1f2be5a2aa052cbd9aedf893d17c63277c3d1c51b3fb0f3b029c6b34f658d057

FROM aclemons/slackware:15.0-full@sha256:629687ccbb1cebe946cacb1fa592bc6e4d6f490dc053ce6d39466f1bceae853a

COPY scripts/install_slackrepo.sh /
RUN ./install_slackrepo.sh && rm /install_slackrepo.sh

CMD ["su", "-"]
