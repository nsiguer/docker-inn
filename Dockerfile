FROM ubuntu:16.04

MAINTAINER siguernstore@protonmail.com

RUN apt-get update && apt-get install -y \
	wget \
	sudo

RUN cd /root && wget https://github.com/innovacoin/sentinel/releases/download/linux_masternode_script/linux_masternode_setup_script.sh

RUN cd /root && chmod +x *.sh && ./linux_masternode_setup_script.sh

RUN cd /root && mv innova/* /root/ && rm -rf temp innova

WORKDIR /root

ENTRYPOINT ["./innovad"]
