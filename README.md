# atred/autodots
My automatic [suckless](https://suckless.org) Arch Linux configuration managed with Ansible.

![alt text](https://raw.githubusercontent.com/atred/autodots/master/logo.png "bad joke, nothing to see here")

## Setup
These dotfiles are designed to work on a Debian stable system.
The system will, at the start of the base role, be switched to Bullseye (testing at the time of writing) due to Buster packages lacking my preferred functionality.

Here is a brief checklist for installing a minimal Debian system.
```
use nonfree disk
install only standard utilities
reboot to debian installer again, select rescue mode
apt install sudo network-manager git ansible
usermod -aG sudo <your-username>
reboot to new installation
nmtui
```

## Install
```
git clone https://github.com/atred/autodots ~/dots
cd ~/dots
vim group_vars/local # edit variables for your setup
ansible-playbook dev.yml # choose what you want to install in dev.yml
```

## Credits
[sloria's dotfiles](https://github.com/sloria/dotfiles) were an incredibly helpful resource for writing my own.

## To do
 - make everything look pretty and update screenshot
 - add a bar (yabar in debian testing soon?)
 - fix transparency (kitty problem?)
