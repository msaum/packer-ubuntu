#!/bin/bash
# Update to latest version and tools
unset UCF_FORCE_CONFFOLD
export UCF_FORCE_CONFFNEW=YES
sudo ucf --purge /boot/grub/menu.lst
export DEBIAN_FRONTEND=noninteractive
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -o Dpkg::Options::="--force-confnew" --force-yes -fuy dist-upgrade
sudo apt-get -y install openjdk-7-jre
sudo apt-get -y install awscli
sudo apt-get -y install python-setuptools
sudo apt-get -y install python-pip
sudo apt-get -y install ec2-api-tools
sudo apt-get -y install cloud-guest-utils
sudo apt-get -y install software-properties-common
sudo apt-get -y install python-configobj
sudo apt-get -y install git
sudo apt-get -y install ansible
sudo apt-get -y install facter
sudo apt-get -y upgrade
sudo pip install https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz
sudo pip install --upgrade boto
sudo pip install --upgrade boto3
sudo pip install --upgrade awscli
sudo wget -q -O /usr/local/bin/cli53 https://github.com/barnybug/cli53/releases/download/0.6.5/cli53-linux-amd64
sudo chmod a+x /usr/local/bin/cli53
sudo wget -q -O /usr/lib/apt/methods/s3 https://raw.githubusercontent.com/BashtonLtd/apt-transport-s3/master/s3
sudo chmod a+x /usr/lib/apt/methods/s3
