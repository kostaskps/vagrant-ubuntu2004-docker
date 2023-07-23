#!/bin/bash


# Install Docker prerequisites
echo .
echo "[TASK 1] Install Docker prerequisites"
apt update && apt install -y apt-transport-https ca-certificates curl gnupg software-properties-common

# Add the GPG key for the official Docker repository to your system
echo "[TASK 2] Add Docker GPG Key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources
echo "[TASK 3] Add Docker repository to APT sources"
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"


echo "[TASK 4] Install Docker-ce and docker-compose"
# Make sure you are about to install from the Docker repo instead of the default Ubuntu repo
apt-cache policy docker-ce
# Finally install Docker
apt update && apt install -y docker-ce docker-compose

# Update hosts file
echo .
echo "[TASK 8] Update /etc/hosts file"
cat >>/etc/hosts<<EOF
172.18.18.200   ansible
EOF
