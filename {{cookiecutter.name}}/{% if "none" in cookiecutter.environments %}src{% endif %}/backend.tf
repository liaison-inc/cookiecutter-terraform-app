terraform {
    backend "remote" {
        organization = "{{cookiecutter.organization}}"

        workspaces {
            name = "{{cookiecutter.name}}"
        }
    }
}