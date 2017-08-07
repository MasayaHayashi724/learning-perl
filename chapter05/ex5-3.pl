use strict;
use warnings;

print "Input strings:\n";
chomp(my @strings = <STDIN>);
print "Input column width: ";
chomp(my $width = <STDIN>);

my $ruler = "1234567890";
my $ruler_length = $width / 10 + 2;
print $ruler x $ruler_length . "\n";

foreach (@strings) {
  printf "%${width}s\n", $_;
}
