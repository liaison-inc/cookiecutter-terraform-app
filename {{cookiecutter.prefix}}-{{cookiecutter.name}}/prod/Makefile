apply:
	make tfvars-noforce && terragrunt apply
destroy:
	terragrunt destroy
output:
	terragrunt output
test:
	terragrunt apply --terragrunt-source ../src
tfvars-noforce:
	../generate-tfvars.sh -p {{cookiecutter.profile}} -r us-east-1
tfvars:
	../generate-tfvars.sh -p {{cookiecutter.profile}} -r us-east-1 --force