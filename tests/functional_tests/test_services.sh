#!/bin/bash
ansible all -m shell -a "systemctl is-active rsyslog" -b || exit 1
ansible all -m shell -a "systemctl is-active docker" -b || exit 1
ansible all -m shell -a "systemctl is-active {{ 'apache2' if ansible_os_family == 'Debian' else 'httpd' }}" -b || exit 1