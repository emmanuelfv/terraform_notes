#!/usr/bin/bash
ssh-keygen -t rsa -N "" -f ./vpckeypair
terraform init
terraform apply

