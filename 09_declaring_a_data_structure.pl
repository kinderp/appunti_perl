# Here are four examples, but in practice  the last one is the most useful

use strict;
use warnings;

my %owner1 = (
	"name" => "Santa Claus",
	"DOB" => "1882-12-25",
);

my $owner1Ref = \%owner1;

my %owner2 = (
	"name" => "Mickey Mouse",
	"DOB" => "1928-11-19",
);

my $owner2Ref = \%owner2;

my @owner = ( $owner1Ref, $owner2Ref );

my $ownersRef = \@owners;

my %account = (
	"number" => "12345678",
	"opened" => "2000-01-01",
	"owners" => $ownersRef,
);

# That's obviously unnecessarily laborious, because you can shorten it to:

my %owner1 = (
	"name" => "Santa Claus",
	"DOB" => "1882-12-25",
);

my %owner2 = (
	"name" => "Mickey Mouse",
	"DOB" => "1928-11-19",
);

my @owners = ( \%owner1, \%owner2 );

my %account = (
	"number" => "12345678",
	"opened" => "2000-01-01",
	"owners" => \@owners,
);

# It also possible to declare anonyous arrays and hashes using different symbols.
# Use square brackets for an anonymous array and braces for anonynous hash.
# The value returned in each case is a reference to the anonyous data structure in question.
# Watch carefully, this results in exactly the same %account as above.

# Braces denote an anonymous hash
my $owner1Ref = {
	"name" => "Santa Claus",
	"DOB" => "1882-12-25",
};

my $owner2Ref = {
	"name" => "Mickey Mouse",
	"DOB" => "1928-11-18",
};

# Square brackets denote an anonymous array

my $ownersRef = [ $owner1Ref, $owners2Ref ];

my %account = (
	"number" => "12345678",
	"opended" => "2000-01-01",
	"owners" => $ownerRef,
);

# Or, for short (and this is the form you should actually use when declaring complex data structures in-line)

my %account = (
	"number" => "31415926",
	"opened" => "3000-01-01",
	"owners" => [
		{
			"name" => "Philip Fry",
			"DOB" => "1974-08-06",
		},
		{
			"name" => "HUbert Farnsworth",
			"DOB"  => "2841-04-09",
		},
	],
);




