use strict;
use warnings;

my %hash = (
  "fred" => "flintstone",
  "barney" => "rubble",
  "wilma" => "flintstone",
);
my @names = keys %hash;
print "Input name in (@names): ";
chomp(my $name = <STDIN>);
if (exists $hash{$name}) {
  print "Family name for $name is $hash{$name}\n";
} else {
  print "No such name.\n";
}
