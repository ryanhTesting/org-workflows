# Based on the latest version of the alpine image
FROM alpine:latest 


# Updates the package index and installs python3 in the alpine container
RUN apk --update add python3
RUN apk --update add --no-cache curl
RUN curl -sSL https://install.python-poetry.org | python3 -
