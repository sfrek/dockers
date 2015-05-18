all: consul registrator
	docker-compose up -d

consul:
	docker build -t consul ./consul/

registrator:
	docker build -t registrator ./registrator/

.PHONY: consul registrator
