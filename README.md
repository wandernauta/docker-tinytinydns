# docker-tinytinydns

A very tiny Docker image that runs D. J. Bernstein's `tinydns` authoritative
DNS server. At a virtual size of 33kB (yes, kilobytes), it's quite a lot
smaller than your average BIND Docker image, although, admittedly, it doesn't
have all of BIND's features.

## What's included?

- `tinydns` version 1.05.

That's it.

## How do I use it?

Write a tinydns [data file](http://cr.yp.to/djbdns/tinydns-data.html) and turn
it into a `data.cdb` database using the bundled `tinydns-data` utility. Then
do:

	sudo docker run -i -p 53:53/udp -v /host/path/to/data.cdb:/data/data.cdb wandernauta/docker-tinytinydns

`tinydns` should start serving DNS requests on port 53 and print its log to
standard out.

An example data file (and its corresponding `data.cdb` file) have been included
in the repository for your perusal.

## License

The `tinydns` programs are part of `djbdns` which has been placed into the
[public domain][] by the author. I dedicate the rest of it to the public domain
under [CC0][].

[public domain]: http://cr.yp.to/distributors.html
[CC0]: https://creativecommons.org/publicdomain/zero/1.0/
