FROM heroku/cedar:14
MAINTAINER LDuderino

RUN apt-get -q update
RUN apt-get -q -y install curl gcc make wget unzip

ADD redis-cli redis-cli

CMD ./redis-cli

