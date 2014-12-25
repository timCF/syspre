#!/bin/bash
yum -y update
yum -y install wget
wget http://dl.iuscommunity.org/pub/ius/stable/CentOS/7/x86_64/ius-release-1.0-13.ius.centos7.noarch.rpm
rpm -Uvh ius-release*.rpm
wget http://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm
rpm -Uvh erlang-solutions-1.0-1.noarch.rpm
yum -y update 

yum -y erase docker
yum -y install make gcc g++ screen docker-io
yum -y install npm; npm install -g iced-coffee-script
yum -y install erlang

cd /opt; git clone https://github.com/elixir-lang/elixir.git;cd elixir; git checkout v1.0.0; make clean install