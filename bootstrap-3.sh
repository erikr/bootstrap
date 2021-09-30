# Conda & Mamba
INSTALLER=Miniconda3-latest-$(uname)-$(uname -m).sh
curl -L -O https://repo.anaconda.com/miniconda/$INSTALLER
bash $INSTALLER
~/miniconda3/bin/conda init zsh

# Install Mamba
conda install mamba -n base -c conda-forge

# Base DSE environment
mamba env create -f ~/bootstrap/environment.yml

# Speedtest
curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
sudo apt-get install speedtest
