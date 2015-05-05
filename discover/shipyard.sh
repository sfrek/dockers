#!/bin/bash
#
# shipyard starter first approach
#

# RethinkDB
#	Start an data volume instance of RethinkDB:
docker run -it -d --name shipyard-rethinkdb-data \
	 --entrypoint /bin/bash shipyard/rethinkdb -l
#	Start RethinkDB with using the data volume container:
sleep 2
docker run -it -d --name shipyard-rethinkdb \
    --volumes-from shipyard-rethinkdb-data shipyard/rethinkdb

# API
#	Start the Shipyard controller
sleep 5
docker run -it -d --name shipyard \
    --link shipyard-rethinkdb:rethinkdb shipyard/shipyard

# NOTES:
#	https://registry.hub.docker.com/u/progrium/consul/dockerfile/
#	https://github.com/gliderlabs/registrator
#	http://shipyard-project.com/docs/quickstart/
#	http://shipyard-project.com/docs/quickstart/
# Shipyard cli:
#	docker run -it shipyard/shipyard-cli
