#
# docker build -t dkirrane/web .
# docker run --rm --name="web" --link=db:db dkirrane/web
#
FROM ubuntu
RUN apt-get -yqq update

ENV DATE 1

COPY env.sh /opt/env.sh
RUN chmod 777 /opt/env.sh

#ENV CHILD_DB_PORT $DB_PORT

EXPOSE 3000

# CMD ["env"]
ENTRYPOINT ["/opt/env.sh"]
CMD ["env"]