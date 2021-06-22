locals {
	tfvars = jsondecode(file("../terraform.auto.tfvars.json"))
}

generate "backend" {
	path = "backend.tf"
	if_exists = "overwrite"
	contents = <<EOF
terraform {
	backend "local" {
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
}