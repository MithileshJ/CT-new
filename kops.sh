#!/bin/bash
##install kops ##
apt update
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64

mv kops-linux-amd64 kops
chmod +x kops
mv kops /usr/bin

## install kubectl ##
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

chmod +x kubectl
mv kubectl /usr/bin/

## install aws cli
apt install awscli -y
