provision:
	terraform plan
	terraform apply
	terraform output -json > terraform-output.json

configure:
	ansible-playbook -i inventory.py playbook/setup-user.yml playbook/setup-access.yml playbook/build.yml 

start:
	ansible-playbook -i inventory.py playbook/start.yml

stop:
	ansible-playbook -i inventory.py playbook/stop.yml
