# use docker-compose running tf  gitlab migrate test

## how to running

* start docker-compose (gitlab)

```code
docker-compose up -d
```

* config gitlab server

```code
open http://localhost:10080

and add one acccess token
```

* create one demo git repo (with --bare option) or copy from gitlab server git-data directory

```code
for this test you must after terraform apply  && copy one repo with firstrong.git
```

* stop redis and  remove dump file or flush redis db info

## some notes

you maybe flush redis cache for load git repo code