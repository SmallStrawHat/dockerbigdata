#!/bin/bash
#
#

sudo docker build -t moonnoon/base ./base/
sudo docker build -t moonnoon/zookeeper ./zookeeper/
sudo docker build -t moonnoon/kafka ./kafka/
sudo docker build -t moonnoon/flume ./flume/