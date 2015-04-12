D=$(shell readlink -f data.cdb)

run: data.cdb
	sudo docker run -d --read-only -p 53:53/udp -v $D:/data/data.cdb wandernauta/tinydns

data.cdb: data
	./tinydns-data
