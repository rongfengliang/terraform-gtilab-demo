
variable  "gitlab_token" {
    default ="xxxxx"
}

variable  "service_ports" {
    type = "list"
    default =[ {
        ingress ={
            value =8080
        } 
    },
    {
        ingress ={
            value =8082
        } 
    }
    ]
}