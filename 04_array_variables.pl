# An array variable is a list of scalars indexed by integers beginning at 0.
# In python this is known as a list, and in PHP that is known as an array.
# An array is declared using a paranthesised list if scalars:
use strict;
use warnings;

my @array = (
	"print",
	"these",
	"strings",
	"out",
	"for",
	"me", #trailing comma is okay
);

# You have to use a dollar sign to access a value from an array, because the values being retrieved is not an array but a scalar.

print $array[0]; # "print"
print $array[1]; # "these"
print $array[2]; # "strings"
print $array[3]; # "out"
print $array[4]; # "for"
print $array[5]; # "me"
print $array[6];  # returns undef, prints "" and raises a warning

# You can use negative indices to retrieve starting from the end and working backwards

print $array[-1];
print $array[-2];
print $array[-3]:
print $array[-4];
print $array[-5];
print $array[-6];
print $array[-7]; # returns undef, prints ""  and raises a warning

# There is no collision between a scalar $var and an array @var containing a scalar entry $var[0].
# There may, however, be reader confusion, so avoid this.

# To get an array's lenght
print "This array has " . (scalar @array) . "elements"; # "This array has 6 elements"
print "The last populated index is " . $#array;         # "The last populated index is 5"

# The arguments with which the original Perl script was invoked are stored in the built-in variable @ARGV

# Variables can be interpolated into strings

my $string = "world";
print "Hello $string"; # "Hello world"
print "@array";        # "print these strings out for me"

# Caution!
# One day you will put somebody's email address inside a string, "jeff@gmail.com". This will cause Perl to 
# look for an array variable called @gmail to interpolate into the string, and not find it, resulting in an
# runtime error. Interpolation can be prevented in two ways: by backslash-escaping the sigil, or by using
# single quotes instead of double quotes.

print "Hellp \$string"; # "Hello $string"
print 'Hello $string';  # "Hello $string"
print "\@array";        # "@array"
print '@array';         # "@array"
