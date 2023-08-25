#!/bin/bash

# Update system
sudo apt-get update -y
sudo apt-get upgrade -y

# Check if python3 is installed
if ! command -v python3 &>/dev/null; then
    echo "Python3 could not be found. Installing..."
    sudo apt-get install -y python3
else
    echo "Python3 is already installed."
fi

# Check if pip3 is installed
if ! command -v pip3 &>/dev/null; then
    echo "pip3 could not be found. Installing..."
    sudo apt-get install -y python3-pip
else
    echo "pip3 is already installed."
fi

# Check if Ansible is installed
if ! command -v ansible &>/dev/null; then
    echo "Ansible could not be found. Installing..."
    sudo pip3 install ansible
else
    echo "Ansible is already installed."
fi

echo "Script execution completed."


#sudo ansible-playbook main.yml
