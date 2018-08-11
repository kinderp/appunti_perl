use strict;
use warnings;

# the ternary operato ?: allows simple if statements to be embedded in a statement. The canonical use for this is singular/plural forms.

my $gain = 48;
print "You gained ", $gain, " ", ($gain == 1 ? "experience point" : "experience points"), "!";

# ternary operator can be nested

my $eggs = 5;
print "You have ", $eggs == 0 ? "no eggs" :
		   $eggs == 1 ? "an egg " :
		   "some eggs";

# if statements evaluate their condition in scalar context.
# For example, if(@array) returns true if and only if array has 1 or more elements.
# it doesn't matter what those elements are - they may contain undef or other  valus for all we care. 
