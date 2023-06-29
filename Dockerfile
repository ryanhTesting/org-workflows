FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update && apt install python3.8 curl -y
RUN curl -sSL https://install.python-poetry.org | python3 -
