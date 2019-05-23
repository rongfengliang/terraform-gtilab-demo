
variable  "gitlab_token" {
    default ="155oxZ2wvF-iDnz8gd2s"
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