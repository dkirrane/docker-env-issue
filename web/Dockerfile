#
# docker build -t dkirrane/web .
# docker run --rm --name="web" --link=db:db dkirrane/web
#
FROM ubuntu
# RUN apt-get -yqq update

ENV CHILD_DB_PORT $DB_PORT

CMD ["env"]