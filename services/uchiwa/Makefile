VERSION=0.8.1

build: 
	test -f config/config.json || \
		git clone https://gist.github.com/74a0c4271e806b62425f.git config
	test -d uchiwa || \
		git clone -b $(VERSION) git@github.com:sensu/uchiwa.git uchiwa
	docker build -t sfrek/uchiwa ./uchiwa/
	rm -rf uchiwa
