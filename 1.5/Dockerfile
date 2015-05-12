FROM ubuntu:utopic

MAINTAINER Martin Westergaard Lassen <mwl@trifork.com>

ADD http://packages.erlang-solutions.com/site/esl/mongooseim/FLAVOUR_1_main/mongooseim_1.5.1-1~ubuntu~utopic_amd64.deb /tmp/mongooseim.deb

RUN apt-get update && \
    apt-get install -y \
        libodbc1 \
        unixodbc && \
    dpkg -i /tmp/mongooseim.deb && \
    rm -rf /var/lib/apt/lists/* /tmp/mongooseim.deb

EXPOSE 5222 5280 5269

CMD /usr/lib/mongooseim/bin/mongooseim console -noshell