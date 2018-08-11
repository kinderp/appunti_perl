use strict;
use warnings;


# A scalar variable can contain:
# - 1 - undef
# - 2 - a number (Perl does not distinguish between an integer and a float)
# - 3 - a string
# - 4 - a reference

my $undef = undef;
print $undef; #print the empty string "" and raise a warning

#implicit undef
my $undef2;
print $undef2; #print "" and raises exactly the same warnning

my $num = 4040.5;
print $num; #"4040.5"

my $string = "world";
print $string; #"world"

# String concatenation using . operator 

print "Hello " . $string; 
