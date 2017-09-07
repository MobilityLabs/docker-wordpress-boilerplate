FROM mysql:5.6

RUN apt-get update
RUN apt-get --yes --force-yes install mydumper
