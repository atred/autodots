# atred/autodots
My automatic [suckless](https://suckless.org) Arch Linux configuration managed with Ansible.

![alt text](https://raw.githubusercontent.com/atred/autodots/master/logo.png "bad joke, nothing to see here")

## Install
```
git clone https://github.com/atred/autodots ~/dots
cd ~/dots
vim group_vars/local # edit variables for your setup
ansible-playbook dev.yml # choose what you want to install in dev.yml
```

## Credits
[sloria's dotfiles](https://github.com/sloria/dotfiles) were an incredibly helpful resource for writing my own.
