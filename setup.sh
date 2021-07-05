#!/bin/bash
################################################################################
# Script     : setup.sh
# Author     : David Velez
# Date       : 07/04/2021
# Description: Setup my preferences, including doing a repository update,
#              and installing ansible which will do most of the leg work
################################################################################

# Update Repository
echo "*******************************************************************************"
echo "* Update Respository..."
echo "*******************************************************************************"

sudo apt update

echo "*******************************************************************************"
echo "* ...Complete!"
echo "*******************************************************************************"


# Update uid variable in Master Playbook based on current user
echo "*******************************************************************************"
echo "* Update Playbook User Variable..."
echo "*******************************************************************************"

sed -i "s/userholder/$USER/g" ./playbooks/master.yml

echo "*******************************************************************************"
echo "* ...Complete!"
echo "*******************************************************************************"


# Install Ansible and Run Playbooks
echo "*******************************************************************************"
echo "* Installing Ansible and Running Playbooks..."
echo "*******************************************************************************"

sudo apt install ansible -y
ansible-playbook ./playbooks/master.yml

echo "*******************************************************************************"
echo "* ...Complete!"
echo "*******************************************************************************"
