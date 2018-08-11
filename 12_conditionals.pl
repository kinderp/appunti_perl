use strict;
use warnings;

# No surprises here, other than the spelling of elsif

my $word = "antidisestablishmentarianism";
my $strlen = length $word;

if( $strlen >= 15 ) {
	print "'", $word, "' is a very long word";
} elsif( $strlen <= 10 && $strlen < 15 ) {
	print "'", $word, "' is a medium-length word";
} else {
	print "'", $word, "' is a short word";
}

# Per provides a shorter statement if condition syntax which is higly reccomended for short statements

print "'", $word, "' is actualy enormous" if $strlen >= 20;




