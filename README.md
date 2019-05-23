# gitlab migrate with group && prroject

use mustache generate  tr file (search with rest api)

## generate tf files

> use mustache tempalte && nodejs

* install deps

```code
yarn
``

* config gitlab search api address

```code
.env like this
gitlab_api=http://localhost:8080/app.json
```

* generate tf file

```code
yarn tf
```

* run mock api server

```code
yarn mock
```

* run tf init

```code
terraform init
```

* run plan

```code
terraform plan
```

* run apply

```code
terraform apply
```

* run destroy (optinal)

```code
terraform destroy
```

## some notes

* current deal with  only one group for more you maybe change the query && template

* gitlab repo group && project rest format

```code
{
   "data": {
    "projects": [
        {
          "name": "firstrong",
          "path":"firstrong",
          "description":"firstrong",
          "group" : "firstrong"
        },
        {
           "name": "secondrong",
           "path":"secondrong",
           "description":"secondrong",
           "group": "secondrong"
        },
        {
            "name": "thirdrong",
            "path":"thirdrong",
            "description":"thirdrong",
            "group": "thirdrong"
        }
    ],
    "groups_parent":[
        {
          "name":"firstrong",
          "path":"firstrong",
          "description":"firstrong"
        },
        {
            "name":"secondrong",
            "path":"secondrong",
             "description":"secondrong"
        },
        {
            "name":"thirdrong",
            "path":"thirdrong",
            "description":"thirdrong"
        }
    ],
    "subgroups":[
        {
          "name":"demoapp",
          "path":"demoapp",
          "parent":"firstrong"
        },
        {
            "name":"demoapp2",
            "path":"demoapp2",
            "parent":"secondrong"
        },
        {
            "name":"demoapp3",
            "path":"demoapp3",
            "parent":"thirdrong"
        }
    ]

   } 
}
```

* you can use sqler generate rest api

```code
see restapi dir
```