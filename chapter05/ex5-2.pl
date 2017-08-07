use strict;
use warnings;

print "Input strings:\n";
chomp(my @strings = <STDIN>);
my $ruler = "1234567890";
print $ruler x 7 . "\n";
foreach (@strings) {
  printf "%20s\n", $_;
}
