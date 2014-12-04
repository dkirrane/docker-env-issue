#
# docker build -t dkirrane/web .
# docker run --rm --name="web" --link=db:db dkirrane/web
#
FROM ubuntu
RUN apt-get -yqq update
ENV REFRESHED_AT 2014-DEC-04

COPY env.sh /opt/env.sh
RUN chmod 777 /opt/env.sh

EXPOSE 3000

ENTRYPOINT ["/opt/env.sh"]
CMD ["env"]