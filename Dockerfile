FROM rabbitmq:3.7-management

MAINTAINER Marcelo Melo <marceloagmelo@gmail.com>

COPY Dockerfile $RABBITMQ_HOME/Dockerfile

#######################################################################
##### We have to expose image metada as label and ENV
#######################################################################
LABEL br.com.santander.imageowner="Corporate Techonology" \
      br.com.santander.description="Rabbitmq 3.7.16 runtime for node microservices" \
      br.com.santander.components="Rabbit Server" \
      br.com.santander.image="marceloagmelo/rabbitmq-cluster-3.7.16:1.0.0.RELEASE"

ENV br.com.santander.imageowner="Corporate Techonology"
ENV br.com.santander.description="Rabbitmq 3.7.16 runtime for node microservices"
ENV br.com.santander.components="Rabbitmq Server"
ENV br.com.santander.image="marceloagmelo/rabbitmq-cluster-3.7.16:1.0.0.RELEASE"

EXPOSE 4369 5671 5672 25672 15671 15672

CMD ["rabbitmq-server"]
