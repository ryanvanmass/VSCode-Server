#Select Base Image to build on
FROM ubuntu:20.04 as build

#Install Code-Server
RUN apt update
RUN apt install curl -y
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Custom config to make docker image work
RUN mkdir -p /root/.config/code-server
COPY config.yaml /root/.config/code-server/

ENTRYPOINT [ "code-server" ]