locals {
	tfvars = jsondecode(file("../terraform.auto.tfvars.json"))
}

terraform {
	source = "../src"
}

variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}
variable "AWS_DEFAULT_REGION" {}

inputs = {
	AWS_ACCESS_KEY_ID = local.tfvars.AWS_ACCESS_KEY_ID
	AWS_SECRET_ACCESS_KEY = local.tfvars.AWS_SECRET_ACCESS_KEY
	AWS_DEFAULT_REGION = local.tfvars.AWS_DEFAULT_REGION
	environment = "stage"
}

