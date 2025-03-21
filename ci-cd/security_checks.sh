#!/bin/bash
ansible all -m shell -a "ufw status | grep 'Status: active'" -b || exit 1
ansible all -m shell -a "systemctl is-active fail2ban" -b || exit 1