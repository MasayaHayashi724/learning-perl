use strict;
use warnings;

print "Input words:\n";
chomp(my @words = <STDIN>);
my %hash;
foreach my $word (@words) {
  $hash{$word} += 1;
}
foreach my $key (sort keys %hash) {
  print "$key\t$hash{$key} times.\n";
}
