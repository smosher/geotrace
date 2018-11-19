#!/usr/bin/perl

use common::sense;
use feature qw(say);

while(<>) {
    my $line = $_;
    $line =~ s/^\s*//;
    my @line = split(/\s+/, $line);
    if($line[0] eq "traceroute") { next; }

    my $hop = shift(@line);
    say "hop: $hop";
    while (my $ip = shift(@line)) {
        if(isip($ip)) { geotrace($ip); }
    }
}

sub isip {
    my $ip = shift;
    if($ip =~ m/^\d{1,3}\.\d{1,3}\./) {
        return 1;
    }
    return 0;
}

sub geotrace {
    my $ip = shift;
    my @res = qx|geoiplookup $ip|;

    shift @res;
    pop @res;
    print "\t$ip: @res";
}
