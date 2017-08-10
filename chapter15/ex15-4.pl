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
  when( @divisors ~~ [] ) { say "That is a prime number." }
  default { say join ", ", divisors $_ }
}
