
provider "gitlab" {
    base_url = "http://localhost:10080/api/v4/"
    token = "yUBy5J3kUXYEF4kZHps6"
}

resource "gitlab_project" "firstrong" {
    name = "firstrong"
    path = "firstrong"
    description = "firstrong"
    namespace_id = "${gitlab_group.firstrong.id}"

}

resource "gitlab_group" "firstrong" {
    name = "firstrong"
    path = "firstrong"
    description = "firstrong"
}

resource "gitlab_group" "demoapp" {
    name = "demoapp"
    path = "demoapp"
    parent_id = "${gitlab_group.firstrong.id}"
}
