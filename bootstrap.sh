#!/usr/bin/env bash

# Install Microsoft Visual Code

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo yum check-update
sudo yum install code -y

# # Install Google Chrome

# cd /etc/yum.repos.d/
# sudo vim google-chrome.repo
# echo '[google-chrome]' >> google-chrome.repo
# echo 'name=google-chrome' >> google-chrome.repo
# echo 'baseurl=http://dl.google.com/linux/chrome/rpm/stable/$basearch' >> google-chrome.repo
# echo 'enabled=1' >> google-chrome.repo
# echo 'gpgcheck=1' >> google-chrome.repo
# echo 'gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub' >> google-chrome.repo
# sudo yum install google-chrome-stable

# # Install Terraform v0.11.1

# sudo wget https://releases.hashicorp.com/terraform/0.11.1/terraform_0.11.1_linux_amd64.zip
# sudo unzip terraform_0.11.1_linux_amd64.zip -d /bin/
# terraform --version

# # Install Graphviz

# sudo yum install 'graphviz*'

# # Complete yum update

# sudo yum update -y