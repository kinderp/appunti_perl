use strict;
use warnings;

# next and last can be used to control the progress of a loop.
# In most programming languages these are known as continue and break.
# We can also  optionally provides a label for any loop.
# By convetion, leabes are writtern ALLCAPITALS.
# Having labelled the loop, next and last may target the label.
# this example finds primes below 100.

CANDIDATE: for my $candidate ( 2 .. 100 ) {
	for my $divisor ( 2 .. sqrt $candidate ) {
		next CANDIDATE if $candidate % $divisor == 0;
	}
}


