use strict;
use warnings;
use 5.010;

my $answer = int(1 + rand 100);
while (1) {
  print "Guess number between 1 and 100: ";
  chomp(my $guess = <STDIN>);
  given( $guess ) {
    when( /exit/i ) { last }
    when( /quit/i ) { last }
    when( ! /\d+/ ) { redo }
    when( $_ > $answer ) { say "Too high" }
    when( $_ < $answer ) { say "Too low" }
    when( $_ == $answer ) { say "Congratulation!!"; last }
  }
}
