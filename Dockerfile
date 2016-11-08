FROM ubuntu:12.04

WORKDIR /usr/src/cloud-apps

RUN apt-get update
RUN apt-get install -y curl python python-pip
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN echo yes | apt-get install -y oracle-java8-set-default
RUN apt-get install -y maven
RUN apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386
RUN apt-get install -y vim

CMD [ "/bin/true" ]
