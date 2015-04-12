# docker-tinytinydns

A very tiny Docker image that runs D. J. Bernstein's `tinydns` authoritative
DNS server and literally nothing else. At a virtual size of 33kB (yes,
kilobytes), it's about nine thousand times smaller than the most popular BIND
image - although, admittedly, it doesn't have all of BIND's features.

# How do I use it?

Write a tinydns [data file](http://cr.yp.to/djbdns/tinydns-data.html) and turn
it into a `data.cdb` database using the bundled `tinydns-data` utility. Then
try:

	sudo docker run -i -p 53:53/udp -v /host/path/to/data.cdb:/data/data.cdb wandernauta/docker-tinytinydns

`tinydns` should start serving DNS requests on port 53 and print its log to
your console.

An example data file (and its corresponding `data.cdb` file) have been included
in the repository for your perusal.

# License

The `tinydns` programs are part of `djbdns` which has been placed into the
public domain by the [author](http://cr.yp.to/distributors.html). I dedicate
what's the rest of it to the public domain under the terms of
[CC0](https://creativecommons.org/publicdomain/zero/1.0/).
