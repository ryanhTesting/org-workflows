FROM python:3.8.2-alpine

RUN apk --no-cache add curl
RUN curl -sSL https://install.python-poetry.org | python3 -
