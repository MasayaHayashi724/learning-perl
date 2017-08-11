use strict;
use warnings;

chdir or die "Cannot go to home directory: $!";
system "ls -l";  # exec "ls", "-l" or die "Cannot exec ls: $!"; # でもOK
