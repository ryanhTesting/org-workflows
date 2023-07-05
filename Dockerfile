
FROM alpine:3.15 as git
RUN apk add --no-cache git curl bind-tools

FROM git as runc
RUN apk add --no-cache musl-dev gcc libseccomp-dev

FROM runc as python
# Updates the package index and installs python3 in the alpine container
RUN apk --update add python3

FROM python as curl
RUN curl https://github.com
RUN curl https://install.python-poetry.org | python3 -
# RUN curl -sSL https://install.python-poetry.org | python3 -
