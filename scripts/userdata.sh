#!/bin/bash
sleep 10
yum install ansible git yum-python26 --enablerepo=epel -y
ansible-pull -U https://github.com/KasteM34/ansible.demo.git
