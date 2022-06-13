#!/bin/bash

echo "update"
sudo apt-get update

echo "Installing Git"
sudo apt-get install git

echo "Installing build-essential"
sudo apt install build-essential -y
sudo apt install libssl-dev -y

echo "Installing cmake"
sudo apt install cmake -y

echo "Installing Docker"
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

echo "Installing Paraview"
sudo apt -y install paraview

echo "Installing python3-setuptools"
sudo apt install python3-setuptools
