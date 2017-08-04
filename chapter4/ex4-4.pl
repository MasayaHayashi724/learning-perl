use strict;
use 5.010;

sub greet {
  my $name = $_[0];
  print "Hi $name! ";
  state $prev;
  if ($prev) {
    say "$prev is also here!";
  } else {
    say "You are the first one here!";
  }
  $prev = $name;
}

&greet( "Fred" );
&greet( "Barney" );
&greet( "Masaya" );
