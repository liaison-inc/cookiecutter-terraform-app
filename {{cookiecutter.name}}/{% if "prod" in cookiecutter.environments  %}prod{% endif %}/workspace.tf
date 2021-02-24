module "local-exec-workspace" {
    source = "app.terraform.io/Liaison/local-exec-workspace/tfe"
    version = "3.0.0"
    ORGANIZATION = "{{cookiecutter.organization}}"
    WORKSPACE_NAME = "{{cookiecutter.name}}"
}