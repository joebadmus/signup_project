#!/bin/bash
set -e

#Add the EPEL repository, and update YUM to confirm your change
sudo yum update -y
sudo amazon-linux-extras install epel -y

## installl java
sudo yum install java-1.8.0-openjdk-demo.x86_64 -y

# install jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key
sudo  yum install jenkins -y
sudo service jenkins start


#install git
yum install git -y