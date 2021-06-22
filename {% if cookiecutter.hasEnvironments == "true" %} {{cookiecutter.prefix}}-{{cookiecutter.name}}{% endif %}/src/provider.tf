provider "aws" {
    region = var.AWS_DEFAULT_REGION
    access_key = var.AWS_ACCESS_KEY_ID
    secret_key = var.AWS_SECRET_ACCESS_KEY

    default_tags {
        tags = {
            Source = "Powered by Terraform"
            Environment = var.environment
            Site = var.site
        }
    }
}