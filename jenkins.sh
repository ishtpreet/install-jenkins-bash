#!/bin/bash
echo "Java Installed? (y/n): "
read x
sudo apt-get update
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt upgrade -y
if [[ "$x" == "n" ]]
then
    sudo apt install default-jre -y
fi
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins