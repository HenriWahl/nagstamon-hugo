FROM ubuntu

ARG HUGO_VERSION=0.120.4

RUN apt -y update &&\
    apt -y upgrade

RUN apt -y install wget
RUN wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb
RUN dpkg -i /tmp/hugo.deb
RUN rm -f /tmp/hugo.deb