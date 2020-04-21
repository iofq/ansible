#!/bin/bash
ansible-galaxy install -r requirements.yml
ansible-playbook --forks 1 -i hosts local.yml
