terraform {
    backend "remote" {
        organization = "{{cookiecutter.organization}}"

        workspaces {
            name = "prod-{{cookiecutter.name}}"
        }
    }
}