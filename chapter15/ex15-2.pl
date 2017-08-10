use strict;
use warnings;
use 5.010;

print "Iuput number: ";
chomp(my $num = <STDIN>);
given( $num ) {
  when( $num % 3 == 0 ) { print "Fizz "; continue }
  when( $num % 5 == 0 ) { print "Bin "; continue }
  when( $num % 7 == 0 ) { print "Sausage"; }
}
print "\n";
