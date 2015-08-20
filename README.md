# Ansible Playbooks
- Don't miss to create group_var folder and misc folder

- Launch first initialization playbook 'init.yml' (choose which user can connect, with(out) pass and/or sudo ?)

------------------------
YALM Validator
------------------------

http://yamllint.com/

------------------------
Howto Ansible
------------------------

# Ping all inventory
ansible -i inventory/ -m ping all
# Ping all host on Stage section 
ansible -i inventory/stage -m ping all
# Ping all host on Production section 
ansible -i inventory/production -m ping all

# Apply the playbook for all environment Product, Stage, Dev
ansible-playbook -i inventory/ site.yml
# Apply the playbook for Stage environment
ansible-playbook -i inventory/stage site.yml
# Apply the playbook for Stage environment and just Business-API
ansible-playbook -i inventory/stage -l business-api site.yml

# Testing your playbook
ansible-playbook --syntax-check -i inventory/stage ./roles/common/tasks/main.yml
ansible-playbook --syntax-check --list-tasks -i inventory/stage site.yml

Tree
------------------------

inventory
	dev
	production
	stage
	dockerßß
misc
	ssh
		config
		ssh_key_production.pem
		ssh_key_stage.pem
roles
	common
		default
		files
		handlers
		task
		templates
		vars
	databases
		redis
			default
			files
			handlers
			task
			templates
			vars
		mysql
			default
			files
			handlers
			task
			templates
			vars


Example :

Execute shell distant command on all Staging:
source init.sh
ansible-prod launch.yml
ansible-prod roles/tools/java.yml -l elastic
ansible-prod -s -m shell -a 'rm -rf /srv/app/*'
