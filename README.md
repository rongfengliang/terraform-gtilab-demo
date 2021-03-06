# gitlab migrate with group && prroject

> tf v0.12

## generate tf files

* install deps

```code
yarn
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

## run test 

> with docker-compose running
> 
[test-docs](./tf-result/README.md)