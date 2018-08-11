use strict;
use warnings;

# Like other Perl expressions, subroutine calls may display contextual behaviour.
# You can use wantarray function to detect what context the subruotine is being evaluated in
# and return a result appropriate to that context.

sub contextualSubroutine {
	# Calle wants a list. Return a list
	return ("Everest", "K2", "Etna") if wantarray;

	# Caller wants a scalar. Return a scalar.
	return 3;
}

my @array = contextualSubroutine();
print @array; # "EverestK2Etna"

my $scalar = contextualSubroutine();
print $scalar; # "3"
