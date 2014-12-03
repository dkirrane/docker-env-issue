### Build both Dockerfiles
```
docker build -t dkirrane/db ./db
docker build -t dkirrane/web ./web
```

### Run db container interactive mode in a Terminal
```
docker run -it --rm -p 8080:8080 --name="db" dkirrane/db
```

### In another Terminal run web container and link it to "db" container

```
docker run --rm --name="web" --link=db:db dkirrane/web
```

### ERROR - The output of CHILD_DB_PORT is incorrect
```
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
HOSTNAME=31603fa1981e
DB_PORT=tcp://172.17.0.25:8080
DB_PORT_8080_TCP=tcp://172.17.0.25:8080
DB_PORT_8080_TCP_ADDR=172.17.0.25
DB_PORT_8080_TCP_PORT=8080
DB_PORT_8080_TCP_PROTO=tcp
DB_NAME=/web/db
CHILD_DB_PORT=$DB_PORT
HOME=/root
```