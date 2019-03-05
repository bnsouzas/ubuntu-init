#!/bin/sh
# dev
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
apt-get update
snap install vscode --classic
snap install postman
snap install intellij-idea-community --classic
snap install redis-desktop-manager
apt-get -y  install dbeaver-ce
# others
snap install spotify