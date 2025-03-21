#!/bin/bash
ansible all -m service -a "name=rsyslog state=restarted" -b
ansible all -m service -a "name=docker state=restarted" -b
ansible all -m service -a "name={{ 'apache2' if ansible_os_family == 'Debian' else 'httpd' }} state=restarted" -b