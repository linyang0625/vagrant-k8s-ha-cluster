#!/bin/bash

# import ssh keys 
echo "master1" > ~/server.txt
mkdir -p ~/.ssh/ && echo "# known hosts" >> ~/.ssh/known_hosts
ssh-keyscan -f ~/server.txt >> ~/.ssh/known_hosts

# get the join command
sshpass -p "vagrant" scp vagrant@master1:/home/vagrant/join.txt ~/join.txt

# join cluster
source ~/join.txt