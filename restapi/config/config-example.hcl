group {
    exec = <<SQL
    SELECT disinct(name) from projects where namespace_id !=nil
    SQL
}

group_project {
    exec = <<SQL
    SELECT disinct(name) from projects where namespace_id !=nil
    SQL
}

gitlab_project {
    aggregate = ["group", "group_project"]
}