provider "gitlab" {
    base_url = "http://git.yonyou.com/api/v4/"
    token = "${var.gitlab_token}"
}
{{#data.groups_parent}}
resource "gitlab_group" "{{name}}" {
    name = "{{name}}"
    path = "{{path}}"
    description = "{{description}}"
}
{{/data.groups_parent}}

{{#data.subgroups}}
resource "gitlab_group" "{{name}}" {

    name = "{{name}}"
    path = "{{path}}"
    description = "{{description}}"
    parent_id = "${gitlab_group.{{parent}}.id}"
}
{{/data.subgroups}}
{{#data.projects}}
resource "gitlab_project" "{{name}}" {
    name = "{{name}}"
    namespace_id = "${gitlab_group.{{group}}.id}"
}
{{/data.projects}}