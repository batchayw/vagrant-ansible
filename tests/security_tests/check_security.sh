#!/bin/bash
ansible all -m shell -a "ufw status | grep 'Status: active'" -b || exit 1
ansible all -m shell -a "fail2ban-client status sshd" -b || exit 1