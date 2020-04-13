FROM rabbitmq:3.7-management

MAINTAINER Marcelo Melo <marceloagmelo@gmail.com>

COPY Dockerfile $RABBITMQ_HOME/Dockerfile

EXPOSE 4369 5671 5672 25672 15671 15672

CMD ["rabbitmq-server"]
