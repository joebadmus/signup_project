#!/bin/bash
set -e

#Add the EPEL repository, and update YUM to confirm your change
sudo yum update -y
sudo amazon-linux-extras install epel -y

## installl python
yum install -y python3
yum install python-pip -y
pip install flask

export AWS_ACCESS_KEY_ID=AKIA2WMUSPUJJEP6K7VM

export AWS_SECRET_ACCESS_KEY=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

