use strict;
use warnings;

# Subroutines are declared using the sub keyword.
# In contrast with built-in functions, user defined subroutines always accept the same input:
# A LIST OF SCALARS
# That list may of course have a single element, or be empty.
# A single scalar is taken as a list with a single element.
# A hash with N elements is taken as a list with 2N elements.

# Although the brackets are optional, 
# subroutines should always be invoked using brackets, even when called with no arguments.
# This make it clear  that a subroutine call is.

# Once you are inside a subroutine, the arguments are available using the built-in array variable @_

sub hyphenate {

	# Extract the first argument from the array, ignore everything else
	my $word = shift @_

	# An overly clever list comprehension
	$word = join "-", map {  substr $word, $_, 1 } (0 .. (length $word) -1);
}

print hyphenate("exterminate"); # "e-x-t-e-r-m-i-n-a-t-e"
