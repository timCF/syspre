#!/bin/bash
apt-get update
apt-get -y install wget
wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb; dpkg -i erlang-solutions_1.0_all.deb
apt-get update
apt-get -y install esl-erlang
apt-get -y install make gcc g++
apt-get -y install npm; npm install -g iced-coffee-script
ln -s /usr/bin/nodejs /usr/bin/node

cd /opt; git clone https://github.com/elixir-lang/elixir.git;cd elixir; git checkout v1.0.0; make clean install; cd /opt; rm -rf ./elixir