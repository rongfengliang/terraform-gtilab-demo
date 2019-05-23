provider "gitlab" {
    base_url = "http://git.yonyou.com/api/v4/"
    token = "${var.gitlab_token}"
}
resource "gitlab_group" "firstrong" {
    name = "firstrong"
    path = "firstrong"
    description = "firstrong"
}
resource "gitlab_group" "secondrong" {
    name = "secondrong"
    path = "secondrong"
    description = "secondrong"
}
resource "gitlab_group" "thirdrong" {
    name = "thirdrong"
    path = "thirdrong"
    description = "thirdrong"
}

resource "gitlab_group" "demoapp" {

    name = "demoapp"
    path = "demoapp"
    description = ""
    parent_id = "${gitlab_group.firstrong.id}"
}
resource "gitlab_group" "demoapp2" {

    name = "demoapp2"
    path = "demoapp2"
    description = ""
    parent_id = "${gitlab_group.secondrong.id}"
}
resource "gitlab_group" "demoapp3" {

    name = "demoapp3"
    path = "demoapp3"
    description = ""
    parent_id = "${gitlab_group.thirdrong.id}"
}
resource "gitlab_project" "firstrong" {
    name = "firstrong"
    namespace_id = "${gitlab_group.firstrong.id}"
}
resource "gitlab_project" "secondrong" {
    name = "secondrong"
    namespace_id = "${gitlab_group.secondrong.id}"
}
resource "gitlab_project" "thirdrong" {
    name = "thirdrong"
    namespace_id = "${gitlab_group.thirdrong.id}"
}

