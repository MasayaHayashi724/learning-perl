use strict;
use warnings;

foreach my $filename (@ARGV) {
  unlink $filename or warn "Cannot remove '$filename': $!";
}
