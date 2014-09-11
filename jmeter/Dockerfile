#base OS
#
#VERSION 0.0.1

FROM debian:wheezy
MAINTAINER zhangjiaqi <jiaqizhang79@gmail.com>

ADD ./conf/sources.list /etc/apt/sources.list
RUN apt-get update -qq
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qqy git wget vim ca-certificates

#install java
RUN \
	echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list && \
	echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list && \
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 && \
	apt-get update

RUN DEBIAN_FRONTEND=noninteractive \
	echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
	apt-get install -y oracle-java7-installer && \ 
	apt-get clean

#install jmeter
RUN DEBIAN_FRONTEND=noninteractive \
	wget http://mirror.bit.edu.cn/apache//jmeter/binaries/apache-jmeter-2.11.tgz && \
	tar zxvf apache-jmeter-2.11.tgz && \
	rm apache-jmeter-2.11.tgz && \
	cp -r apache-jmeter-2.11 /home/ && \
	rm -r apache-jmeter-2.11

ADD src/iptest.csv /home/apache-jmeter-2.11/bin/examples/
ADD src/TestPlan.jmx /home/apache-jmeter-2.11/bin/examples/


ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
