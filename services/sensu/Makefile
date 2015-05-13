EXIT_ON_ERROR = set -e -x;

all: server api client

server: 
	@$(EXIT_ON_ERROR) \
		sed -e 's/xTYPEx/server/' Dockerfile.template > server/Dockerfile; \
		cp -av run.sh server/run.sh; \
		docker build -t packlink/sensu:server ./server; \
		rm -v server/Dockerfile server/run.sh; 

api: 
	@$(EXIT_ON_ERROR) \
		sed -e 's/xTYPEx/api/' Dockerfile.template > api/Dockerfile; \
		cp -av run.sh api/run.sh; \
		docker build -t packlink/sensu:api ./api; \
		rm -v api/Dockerfile api/run.sh;

client: 
	@$(EXIT_ON_ERROR) \
		sed -e 's/xTYPEx/client/' Dockerfile.template > client/Dockerfile; \
		cp -av run.sh client/run.sh; \
		docker build -t packlink/sensu:client ./client; \
		rm -v client/Dockerfile client/run.sh;

hola:
	@$(EXIT_ON_ERROR) \
		echo hola; \
		echo adios; \
		echo fucker;

.PHONY: api client server
