variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}
variable "AWS_DEFAULT_REGION" {}

{% if cookiecutter.hasEnvironments == true %}
variable "environment" {
    type = string
    description = "value is attached to resources (as a tag)"
    validation {
        condition = contains([
            "dev",
            "prod",
            "stage"
        ], var.environment)
        error_message = "Allowed values for input_parameter are \"dev\", \"prod\", or \"stage\"."
    }
}
{% endif %}
variable "site" {
    type = string
    description = "value is attached to resources (as a tag)"
    default = "liaison"
}