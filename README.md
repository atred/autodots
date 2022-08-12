# atred/autodots
My automatic Arch Linux configuration managed with Ansible.

## Install
```
git clone https://github.com/atred/autodots ~/dots
cd ~/dots
nvim group_vars/local # edit variables for your setup
ansible-playbook dev.yml # choose what you want to install in dev.yml
```

## Credits
[sloria's dotfiles](https://github.com/sloria/dotfiles) were an incredibly helpful resource for writing my own.
