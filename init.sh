#!/bin/bash
alias ansible-prod='ansible-playbook -i inventory/production'
alias ansible-stage='ansible-playbook -i inventory/stage'
alias ansible-stage-ping="ansible -i inventory/stage -m ping all"
alias ansible-prod-ping="ansible -i inventory/production -m ping all"