#!/bin/bash

playbookLoc="$1".yml

if [ -f $playbookLoc ]
then
	ansible-playbook $playbookLoc
else
	echo "ERROR: Invalid or no machine type specified as first parameter!"
	exit 1
fi
