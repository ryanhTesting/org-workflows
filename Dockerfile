
FROM alpine:3.18 as git
RUN apk add --no-cache git curl slirp4netns php bind-tools

FROM git as runc
RUN apk add --no-cache musl-dev gcc libseccomp-dev libseccomp-static

FROM runc as python
# Updates the package index and installs python3 in the alpine container
RUN apk --update add python3

FROM python as curl
RUN ls /etc/sysctl.d/
RUN echo 'nameserver 8.8.8.8 \n nameserver 8.8.4.4' >> /etc/resolv.conf && curl https://github.com
RUN cat /etc/resolv.conf
RUN curl https://install.python-poetry.org
# RUN curl -sSL https://install.python-poetry.org | python3 -
