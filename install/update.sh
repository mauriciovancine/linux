#!/bin/bash

# update
sudo apt update -y

# update ppa
sudo apt upgrade -y

# install upgrade
sudo apt dist-upgrade -y

# remove programs
sudo apt autoremove -y --purge

# clean cash apt
sudo apt autoclean -y 

# broken packages
sudo apt-get install -fy
