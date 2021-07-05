#!/bin/bash
################################################################################
# Script     : setup.sh
# Author     : David Velez
# Date       : 06/28/2019
# Description: Setup my preferences, including doing a repository update,
#              and installing ansible which will do most of the leg work
################################################################################

# Update Repository
echo "Update Respository..."
sudo apt update
echo "...Complete!"

# Update uid variable in Master Playbook based on current user
echo "Update Playbook User Variable"
sed -i "s/userholder/$USER/g" ./playbooks/master.yml
echo "...Complete!"

# Install Ansible and Run Playbooks
echo "Installing Ansible and Run Playbooks..."
sudo apt install ansible -y
ansible-playbook ./playbooks/master.yml
echo "...Complete!"
