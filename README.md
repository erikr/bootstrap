# bootstrap

This public repo contains scripts and dotfiles to bootstrap new Ubuntu machines.

Most users should never have to do this; after a machine image is set up, new VMs can be provisioned from that image.

Install `git`:
```
sudo yum groupinstall 'Development Tools'
```

Clone this repo and run the first setup script:
```
git clone https://github.com/prometheusbio/bootstrap.git
bash ~/bootstrap/bootstrap-1.sh
```

Log out and back in to the machine after changing the password.

Change shell to ZSH
```
chsh -s $(which zsh)
```

Set symlinks
```
bash ~/bootstrap/generate-symlinks.sh
```

Install Oh-My-ZSH:
```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Run rest of setup scripts:
```
bash ~/bootstrap/bootstrap-2.sh
bash ~/bootstrap/bootstrap-vim.sh
bash ~/bootstrap/bootstrap-docker.sh
```
> Source: https://forums.docker.com/t/docker-ce-stable-x86-64-repo-not-available-https-error-404-not-found-https-download-docker-com-linux-centos-7server-x86-64-stable-repodata-repomd-xml/98965/7
 
> Note the Docker installation is for amd64 ([link](https://docs.docker.com/engine/install/ubuntu/)), which is not compatible with AWS Graviton 2 EC2 instances.
