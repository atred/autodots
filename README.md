# atred/autodots
My automatic [suckless](https://suckless.org) Arch Linux configuration managed with Ansible.

![alt text](https://raw.githubusercontent.com/atred/autodots/master/logo.png "bad joke, nothing to see here")

## Install
```
git clone https://github.com/atred/autodots ~/dots
cd ~/dots
vim group_vars/local # edit variables for your setup
ansible-playbook dev.yml
rclone config # set remote name to "remote"
rc-pull
```

## TODO
 - Disable proprietary graphics
 - Dev environment (pref in a vm)
 - GnuCash
 - firefox
 - VMs

## Credits
[sloria's dotfiles](https://github.com/sloria/dotfiles) were an incredibly helpful resource for writing my own.
