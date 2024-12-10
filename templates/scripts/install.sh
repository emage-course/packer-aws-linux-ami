#!/bin/bash

sudo yum upgrade -y
sudo yum install git docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo chmod 666 /var/run/docker.sock
docker pull swilliamx/homesite:latest
docker run -d -p 80:80 swilliamx/homesite:latest
