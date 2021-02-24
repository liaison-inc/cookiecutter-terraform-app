terraform {
    backend "remote" {
        organization = "{{cookiecutter.organization}}"

        workspaces {
            name = "dev-{{cookiecutter.name}}"
        }
    }
}