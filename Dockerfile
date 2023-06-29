FROM python:3.8.2-alpine

RUN apk add --no-cache \
        --repository="http://dl-cdn.alpinelinux.org/alpine/edge/main" \
                curl
RUN curl -sSL https://install.python-poetry.org | python3 -
