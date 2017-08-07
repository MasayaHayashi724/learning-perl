use strict;
use warnings;

while (<>) {
  chomp;
  if (/a$/) {  # /a\b/ じゃないと途中のワードにマッチしない！
    print "Matched: |$`<$&>$'|\n";
  } else {
    print "No match: |$_|\n";
  }
}
