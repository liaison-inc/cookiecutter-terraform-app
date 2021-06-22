apply:
	make tfvars-noforce && terragrunt apply
destroy:
	terragrunt destroy
output:
	terragrunt output
tfvars-noforce:
	../generate-tfvars.sh -p {{cookiecutter.profile}} -r us-east-2
tfvars:
	../generate-tfvars.sh -p {{cookiecutter.profile}} -r us-east-2 --force