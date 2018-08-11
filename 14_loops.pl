use strict;
use warnings;

# There's more than one way to do it
# Perl  hass a conventional while loop
my array = (1, 2, 3, 4, 5);

my $i = 0;
while($i < scalar @array) {
	print $i, ": ", $array[$i];
	$i++;
}

# Perl also offerss the until keyword

my $i = 0;
until($i >= scalar @array) {
	print $i, ": ", $array[$i];
	$i++;
}

# these do loops are almost equivalent  to the above (a warning would be raised if @array were empty)

my $i = 0;
do {
	print $i, ": ", $array[$i];
	$i++;
} while($i < scalar @array);

# and

my $i = 0;
do {
	print $i, ": ", $array[$i];
	$i++;
} until($i >= scalar @array);

# Basic c-style for loops are available too. Notice how we put  a my insice the for statement, declaring $i only for scope of the loop.

for(my $i = 0; $i < scalar @array; $i++){
	print $i, ": ", $array[$i];
}

# This kind of for loop is considered old-fashioned  and should be avoided  where possible.
# Native  iteration over a list is much nices.
#
# Note.
# Unlike PHP, the for and foreach keywords are synonyms. Just use whatever looks most readable.

foreach my $string ( @array ) {
	print $string;
}

# if you do need indices, the range operator .. creates an anonynous list of integers

foreach my $i ( 0 .. $#array ) {
	print $i, ": ", $array[$i];
}

# You can't iterate over a hash
# However, you can iterate over its keys.
# Use the keys built-in function to retrieve an array containing all the keys of a hash.
# Then use the foreach approach that we used for arrays.

my %scientists = (
	"Newton"   => "Isaac",
	"Einstein" => "Albert",
	"Darwin"   => "Charles",
);

foreach my $key (keys %scientists) {
	print $key, ": ", $scientists{$key};
}

# Since a hash has no underlying order, the keys may be returned in any order.
# Use sort built-in function to sort the array of keys alphabetically beforehand.

foreach my key (sort keys %scientists) {
	print $key, ": ", $scientists{$key};
};

# if you don't provide an explicit operator, Perl  uses a defualt operator $_
# $_ is the first and friendliest of the built-in variables.

foreach ( @array ) {
	print $_;
};

# if using the default iterator, and you only wish to put a single statement inside you loop
# you can use the super-short loop syntax

print $_ foreach @array;
