#!/usr/bin/perl
use strict;
use warnings;

my $filename = '/root/root.txt';

open(FH, '<', $filename) or die $!;

while(<FH>){
   print $_;
}

close(FH);

