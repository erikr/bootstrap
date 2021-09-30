#!/bin/bash

# Set up symlinks
bash ~/bootstrap/generate-symlinks.sh

# Foundation
sudo yum update -y
sudo yum upgrade 

# Change password; we recommend "prometheusbio"
sudo passwd ec2