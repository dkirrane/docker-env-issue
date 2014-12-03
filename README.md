# Build both Dockerfiles
docker build -t dkirrane/db ./db
docker build -t dkirrane/web ./web

# Run db container interactive mode in a Terminal
docker run -it --rm -p 8080:8080 --name="db" dkirrane/db

# In another Terminal run web container and link it to "db" container
# Note output of web terminal. The output of ENV CHILD_DB_PORT is incorrect
docker run --rm --name="web" --link=db:db dkirrane/web