data "http" "example" {
  url = "http://localhost:8080/app.json"
}

resource "local_file" "foo2" {
    content  = "${templatefile("backends.tmpl", "${jsondecode(data.http.example.body)}")}"
    filename = "init2.sh"
}