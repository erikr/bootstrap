#!/bin/bash

# Install misc tools
sudo yum install util-linux-user zsh tmux tree

# Set up symlinks
bash ~/bootstrap/generate-symlinks.sh

# Foundation
sudo yum update -y
sudo yum upgrade 

# Change password; we recommend "prometheusbio"
sudo passwd ec2-user