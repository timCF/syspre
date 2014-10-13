#!/bin/bash
yum -y update
yum -y install wget
wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -Uvh epel-release-6*.rpm
yum -y update 

yum -y erase docker
yum -y install screen docker-io