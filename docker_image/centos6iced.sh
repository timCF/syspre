#!/bin/bash
yum -y update
yum -y install wget
wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -Uvh epel-release-6*.rpm
wget http://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm
rpm -Uvh erlang-solutions-1.0-1.noarch.rpm
yum -y update 

yum -y install make gcc g++
yum -y install npm; npm install -g iced-coffee-script
yum -y install erlang

cd /opt; git clone https://github.com/elixir-lang/elixir.git;cd elixir; git checkout v1.0.0; make clean install; cd /opt; rm -rf ./elixir