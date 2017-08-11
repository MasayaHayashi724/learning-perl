use strict;
use warnings;
use 5.010;

my @strings;
push @strings, $_ while <>;
while (1) {
  print "Input pattern (just enter to quit): ";
  chomp(my $pattern = <STDIN>);
  last if $pattern =~ m/^\s*$/;
  my @matched_strings = eval {
    grep m/$pattern/, @strings;
  };
  if ($@) {
    print "Error occured: $@";
    redo;
  }
  print @matched_strings;
  my $count = scalar @matched_strings;
  print "Matched $count strings!\n";
}
