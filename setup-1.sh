#!/bin/bash

# Set up symlinks
bash ~/bootstrap/generate-symlinks.sh

# Foundation
sudo yum update -y
sudo yum upgrade 

# Install misc tools
sudo yum install util-linux-user zsh tree

# Change password; we recommend "prometheusbio"
sudo passwd $USER
