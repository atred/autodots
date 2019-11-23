#!/bin/bash

mkdir roles/galaxy
ansible-galaxy install --roles-path roles/galaxy jtyr.archlinux_aur
ansible-playbook dev.yml
