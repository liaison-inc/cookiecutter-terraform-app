{% if cookiecutter.module %}
output "output" {
    value = tomap(module.{{cookiecutter.module}})
}
{% endif %}