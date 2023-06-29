FROM ubuntu:latest


RUN apt update && apt install software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update && apt install python3.8
RUN curl -sSL https://install.python-poetry.org | python3 -
