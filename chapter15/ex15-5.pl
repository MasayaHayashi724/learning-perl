use strict;
use warnings;
use 5.010;

sub divisors {
  my $number = shift;
  my @divisors = ();
  foreach my $divisor ( 2 .. $number/2 ) {
    push @divisors, $divisor unless $_ % $divisor;
  }
  return @divisors;
}

print "Input number: ";
chomp(my $num = <STDIN>);
given( $num ) {
  when( ! m/^\d+$/ ) { say "Iuput a number." }
  my @divisors = divisors $_;
  when( @divisors ~~ [] ) { say "That is a prime number."; continue }
  when( @divisors ~~ 2 ) { say "That is an even number."; continue }
  when( ! (@divisors ~~ 2) ) { say "That is an odd number."; continue }
  when( @divisors ~~ 4 ) { say "That is a multiple of 4." }
}
