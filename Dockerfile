FROM ubuntu:14.04

ADD https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb /tmp/erlang-solutions_1.0_all.deb

RUN dpkg -i /tmp/erlang-solutions_1.0_all.deb && \
    apt-get update && \
    apt-get -y install \
        mongooseim

EXPOSE 5222 5280 5269

CMD /usr/lib/mongooseim/bin/mongooseim console -noshell