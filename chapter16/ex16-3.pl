use strict;
use warnings;
use 5.010;

my $date = `date`;
my @comps = split " ", $date;
my $day = $comps[2];
say "今日は${day}です！";
if ($day =~ m/^日|^土/) {
  say "go play";
} else {
  say "get to work";
}
