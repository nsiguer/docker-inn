FROM ubuntu:16.04

MAINTAINER siguernstore@protonmail.com

RUN apt-get update && apt-get install -y \
	wget \
	sudo


RUN cd /root && wget https://raw.githubusercontent.com/innovacoin/sentinel/master/install.sh

RUN cd /root && bash install.sh


VOLUME ["/root/innova/.innovacore"]

ENTRYPOINT ["/root/innova/innovad"]
