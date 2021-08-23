# bootstrap

This public repo contains scripts and dotfiles to bootstrap new Ubuntu machines.

Most users should never have to do this; after a machine image is set up, new VMs can be provisioned from that image.

1. Set up symlinks, update `apt`, install basic utils, set up Oh-My-Zsh, and set a password:
    ```
    git clone https://github.com/prometheusbio/bootstrap.git
    bash ~/bootstrap/bootstrap-1.sh
    ```

1. Change shell to ZSH
    ```
    chsh -s $(which zsh)
    ```

    Log out, then back in, to reset the password.

1. Install ZSH theme and plugins, Vim plugins, and Miniconda3:
    ```
    bash ~/bootstrap/bootstrap-2.sh
    ```

1. Install Mamba, Conda environment, speedtest, and AWS CLI 2:
    ```
    bash ~/bootstrap/bootstrap-3.sh
    ```

1. Install Docker and `docker-compose`:
    ```
    bash ~/bootstrap/bootstrap-docker.sh
    ```
    Note the Docker installation is for amd64 ([link](https://docs.docker.com/engine/install/ubuntu/)), which is not compatible with AWS Graviton 2 EC2 instances.
