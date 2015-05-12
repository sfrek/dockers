FROM debian:latest

ENV COMPONENT server

RUN \
	apt-get update && apt-get -yq install wget && \
	wget -q http://repos.sensuapp.org/apt/pubkey.gpg -O- | apt-key add - && \
	echo 'deb http://repos.sensuapp.org/apt sensu main' > /etc/apt/sources.list.d/sensu.list && \
	apt-get update && apt-get -yq dist-upgrade && apt-get install sensu && \
	echo 'EMBEDDED_RUBY=true' > cat /etc/default/sensu    


ADD config/${COMPONENT}_config.json /etc/sensu/config.json
ADD run.sh /bin/run.sh

VOLUME ["/etc/sensu/config.d",
				"/etc/sensu/plugins",
				"/etc/sensu/extensions",
				"/etc/sensu/handlers", 
				"/etc/sensu/mutators", 
				"/etc/sensu/plugins",
				"/etc/sensu/ssl" ]

ENTRYPOINT ["/bin/run.sh"]

