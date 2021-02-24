terraform {
    backend "remote" {
        organization = "{{cookiecutter.organization}}"

        workspaces {
            name = "stage-{{cookiecutter.name}}"
        }
    }
}