use strict;
use warnings;

open STDOUT, ">ls.out" or die "Cannot open 'ls.out': $!";
open STDERR, ">ls.err" or die "Cannot open 'ls.err': $!";
chdir or die "Cannot go to home directory: $!";
system "ls -l";
