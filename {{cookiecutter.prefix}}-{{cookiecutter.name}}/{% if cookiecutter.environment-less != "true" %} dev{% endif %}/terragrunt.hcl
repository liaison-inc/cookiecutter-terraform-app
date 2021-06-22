locals {
	tfvars = jsondecode(file("../terraform.auto.tfvars.json"))
	environment = "dev"
	name = "{{cookiecutter.name}}"
}

generate "backend" {
	path = "backend.tf"
	if_exists = "overwrite_terragrunt"
	contents = <<EOF
terraform {
	backend "remote" {
    	organization = "{{cookiecutter.tfc-org}}"
		workspaces {
			name = "${local.environment}-${local.site}-${local.name}"
		}
  	}
}
EOF
}

terraform {
	source = "../src"
}

inputs = {
	AWS_ACCESS_KEY_ID = local.tfvars.AWS_ACCESS_KEY_ID
	AWS_SECRET_ACCESS_KEY = local.tfvars.AWS_SECRET_ACCESS_KEY
	AWS_DEFAULT_REGION = local.tfvars.AWS_DEFAULT_REGION
	environment = local.environment
}

