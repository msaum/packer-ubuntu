#!/usr/bin/env bash

NOW=$(date +"%Y-%m-%d.%H.%M")

packer build \
-var 'vpcid=vpc-xxxxxxxx' \
-var 'subnet=subnet-xxxxxxxx' \
-var 'ami=ami-0ee1c464' \
-var 'region=us-east-1' \
-var 'instance_type=t2.micro' \
-var 'release=14.04' \
-var "now=${NOW}" \
packerfile.json

aws ec2 describe-images \
--owners self \
--query 'Images[].[ImageId,Name]' \
--filter Name=tag:OS_Version,Values=Ubuntu,Name=tag:Release,Values=14.04 \
