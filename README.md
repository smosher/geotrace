# geotrace
traceroute -> geoip lookup

## requirements

geoiplookup command
vaguely-recent Perl
common::sense ```cpanm install common::sense```

## usage

traceroute -n $host | perl geotrace.pl

## example output

    [REDACTED]
    hop: 9
        108.170.248.65: GeoIP City Edition, Rev 1: US, CA, California, Mountain View, 94043, 37.419201, -122.057404, 807, 650
        72.14.220.96: GeoIP City Edition, Rev 1: US, CA, California, Mountain View, 94043, 37.419201, -122.057404, 807, 650
    hop: 10
        108.170.233.187: GeoIP City Edition, Rev 1: US, CA, California, Mountain View, 94043, 37.419201, -122.057404, 807, 650
        108.170.248.1: GeoIP City Edition, Rev 1: US, CA, California, Mountain View, 94043, 37.419201, -122.057404, 807, 650
        216.239.43.111: GeoIP City Edition, Rev 1: US, CA, California, Emeryville, 94608, 37.834202, -122.289703, 807, 510
    hop: 11
        209.85.240.111: GeoIP City Edition, Rev 1: US, N/A, N/A, N/A, N/A, 37.750999, -97.821999, 0, 0
        8.8.8.8: GeoIP City Edition, Rev 1: US, N/A, N/A, N/A, N/A, 37.750999, -97.821999, 0, 0

## limitations

* code is quick & dirty
* does not support ipv6 addresses

