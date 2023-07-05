
FROM alpine:3.18 as git
RUN apk add --no-cache git curl

FROM git as runc
RUN apk add --no-cache musl-dev gcc libseccomp-dev libseccomp-static

FROM runc as python
# Updates the package index and installs python3 in the alpine container
RUN apk --update add python3
RUN curl google.com
RUN curl https://install.python-poetry.org
RUN curl -sSL https://install.python-poetry.org | python3 -
