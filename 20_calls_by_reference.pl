use strict;
use warnings;

# Unlike almost every other major programming languages, Perl calls by reference.
# This means that the variables or values available inside the body of a subroutine are not
# copies of the originals.
# They ARE THE ORIGINALS.

my $x = 7;

sub reassign {
	$_[0] = 42;
}

reassign($x);
print $x; # "42"

# if you try something like
# reassing(8)
# then an error occur and exucution halts, because the first line of reassign() is equivalent to
# 8 = 42
#
# The lessons to learn is that in the body of a subroutine, you should always unpack your arguments
# before  working with them.

