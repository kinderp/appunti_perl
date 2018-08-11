# In the same way that lists cannot contain lists as element
# array and hashes cannot contain other arrays and hashes as elements
# They can only contain scalars.
# Watch what happened when we try

use strict;
use warnings;

my @outer = ("Sun", "Mercury", "Venus", undef, "Mars");
my @inner = ("Earth", "Moon");

$outer[3] = @inner;

print $outer[3]; # "2"



# $outer[3] is a scalar, so it demands a scalar value. 
# When you try to assing an array value like @inner to it, @inner is evaluated in scalar context.
# This is the same as assigning scalar @inner, which is the length of array @inner, which is 2

# However, a scalar variable may contain a reference to any variable, including an array variable
# or a hash variable. This is how more complicated data structures are crated in Perl.

# A reference is created using a backslack

my $colour = "Indigo";
my $scalarRef = \$colour;

# Any time you would use the name of a variable, you can instead just put some braces in , and, 
# wihtin the braces, put a reference to a variable instead
# deferenziazione di uno scalare ${ $scalar_var }

print $colour;		# "Indigo"
print $scalarRef;	# e.g. "SCALAR(0x182c180)"
print ${ $scalarRef };	# "Indigo"

# As long as the result is not ambiguous, you can omit the braces too

print $$scalarRef; 	# "Indigo"

# If your reference is a reference to an array  or hash variable, you can get data out of it using braces
# or using the more popular arraw operator ->

my @colours = ("Red", "Orange", "Yellow", "Green", "Blue");
my $arrayRef = \@colours;

print $colours[0];	 # direct array access
print ${ $arrayRef }[0]; # use the reference to get to the array
print $arrayRef->[0];	 # exactly the same thing

my %atomicWeights = ("Hydrogen" => 1.008, "Helium" => 4.003, "Manganase" => 54.94);
my $hashRef = \%atomicWeights;

print $atomicWeights{"Helium"};	# direct hash access
print ${ $hashRef }{"Helium"};	# use a reference to get to the hash
print $hashRef->{"Helium"};	# exaclty the same thing - this is very common

