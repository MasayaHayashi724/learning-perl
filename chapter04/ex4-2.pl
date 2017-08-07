use strict;
use 5.010;

sub total {
  my $sum = 0;
  foreach (@_) {
    $sum += $_;
  }
  $sum
}

my @fred = ( 1..1000 );
my $fred_total = total(@fred);
say "The total of \@fred is $fred_total.";
