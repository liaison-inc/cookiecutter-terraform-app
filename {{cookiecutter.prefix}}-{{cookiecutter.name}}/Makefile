repo:
	git init
	gh repo create liaison-inc/{{cookiecutter.prefix}}-{{cookiecutter.name}}
tfvars-noforce:
	./generate-tfvars.sh -p {{cookiecutter.profile}} -r us-east-1
tfvars:
	./generate-tfvars.sh -p {{cookiecutter.profile}} -r us-east-1 --force