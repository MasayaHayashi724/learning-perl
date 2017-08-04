use strict;
use 5.010;

sub total {
  my $sum = 0;
  foreach (@_) {
    $sum += $_;
  }
  $sum
}

sub average {
  my $total = &total(@_);
  $total / scalar @_;
}

sub above_average {
  my $average = &average(@_);
  my @result = ();
  foreach (@_) {
    if ($_ > $average) {
      push @result, $_;
    }
  }
  @result
}

my @fred = above_average(1..10);
say "\@fred is @fred";
say "(Should be 6 7 8 9 10)";
my @barney = above_average(100, 1..10);
say "\@barney is @barney";
say "(Should be just 100)";
