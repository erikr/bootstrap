# bootstrap

This public repo contains scripts and dotfiles to bootstrap new Amazon Linux 2 machines.

Most users should never have to do this; after a machine image is set up, new VMs can be provisioned from that image.

Install `git`:
```
sudo yum groupinstall 'Development Tools'
```

Clone this repo and run the first setup script:
```
git clone https://github.com/prometheusbio/bootstrap.git
bash ~/bootstrap/setup-1.sh
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
bash ~/bootstrap/setup-2.sh
bash ~/bootstrap/install-vim.sh
bash ~/bootstrap/install-docker.sh
bash ~/bootstrap/cleanup.sh
``` 
