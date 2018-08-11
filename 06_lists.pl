# A list in Perl is a different thing again from either and array of a hash.
# You have just seen several lists.

#	(
#		"print",
#		"these",
#		"strings",
#		"out",
#		"for",
#		"me",
#	)
#
#	(
#		"Newton" => "Isaac",
#		"Einstein" => "Albert",
#		"Darwin" => "Charles",
#	)


# A list is not a variable!
# A list is an ephemeral value which can be assigned to an array of a hash variable.
# This is why the syntax to declaring array and hash is identical.

# Remember that => is just , in disguise ad then loog at this example
#
# ("one", 1, "three", 3, "five", 5)
# ("one" => 1. "three" => 3, "five" => 5)
#
# the use of => hints that  one these lists is an array declarationa and the other is a hash declaration.
# But on their own, neither of them are declarations of anything. They are just lists.
#
# Also:
# ()
# There aren't even hints here. This list could be used to declare an empty hash and the perl interpreter 
# clearly has no way of telling either way.
# One you understand this odd aspect of Perl, you will also understand why the following fact must be true:
#
# LIST VALUES CANNOT BE NESTED

use strict;
use warnings;

my @array = (
	"apples",
	"bananas",
	(
		"inner",
		"list",
		"several",
		"entry",
	),
	"cherries",
);

# Per has no way of knowing whether ("inner", "list", "several", "entries") is supposed to be an inner array or an inner hash.
# Perl assumes that it is neither and flattens the list out a single long list.

print $array[0]; # "apples"
print $array[1]; # "bananas"
print $array[2]; # "inner"
print $array[3]; # "list"
print $array[4]; # "several"
print $array[5]; # "entries"
print $array[6]; # "cherries"

# The same is true whether the fat comma => is used or not.


my %hash = (
	"beer"    => "good",
	"bananas" => (
		"green"  => "wait",
		"yellow" => "eat",
	),
);

# The above raises a warning because the hash was declared using 7-element list

print $hash{"beer"}; 	# "good"
print $hash{"bananas"}; # "green"
print $hash{"wait"};	# "yellow"
print $hash{"eat"}; 	# undef, so prints "" and raises a warning

# Of course, this does make it easy to concentrate  multiple array  together

my @bones   = ("humerus", ("jaw", "skull"), "tibia");
my @fungers = ("thumb", "index", "middle", "ring", "little") ;
my @parts   = (@bones, @fingers, ("foot", "toes"), "eyeball", "knuckle");

