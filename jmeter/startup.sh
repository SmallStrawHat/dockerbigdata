#!/bin/bash
#
#startup.sh

#build
sudo docker build -t moonnoon/jmeter:testing .

#set image ip
sudo ifconfig eth0:0 10.20.30.10 up
sudo ifconfig eth0:1 10.20.30.11 up
sudo ifconfig eth0:2 10.20.30.12 up

#start
sudo docker run moonnoon/jmeter:testing /home/apache-jmeter-2.11/bin/jmeter -n -t /home/apache-jmeter-2.11/bin/examples/TestPlan.jmx
