
provider "gitlab" {
    base_url = "http://gitserver/api/v4/"
    token = "xxxxxx"
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
    parent_id = "${gitlab_group.firstrong.id}"
}
resource "gitlab_group" "demoapp2" {
    name = "demoapp2"
    path = "demoapp2"
    parent_id = "${gitlab_group.secondrong.id}"
}
resource "gitlab_group" "demoapp3" {
    name = "demoapp3"
    path = "demoapp3"
    parent_id = "${gitlab_group.thirdrong.id}"
}
