# Day 1 – Foundations & Tooling (Instructor → You)

## Install core tools
```bash
sudo apt update && sudo apt -y upgrade
sudo apt -y install unzip curl jq gnupg lsb-release ca-certificates software-properties-common

# AWS CLI v2
curl -fsSLO https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
unzip awscli-exe-linux-x86_64.zip && sudo ./aws/install

# Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Google Cloud SDK
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" |   sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
sudo apt update && sudo apt -y install google-cloud-cli

# Terraform
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" |   sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt -y install terraform

# Docker
sudo apt -y install docker.io
sudo usermod -aG docker $USER && newgrp docker
```

## Verify
```bash
aws --version; az version; gcloud --version; terraform -version; docker --version
```
