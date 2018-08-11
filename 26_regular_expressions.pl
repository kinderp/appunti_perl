use strict;
use warnings;

# Match operations are performed using
# =~ m//
#
# In scalar context =~ m// returns true on success, false on failure

my $string = "Hello World";
if($string =~ m/(\w+)\s+(\w+)/) {
	print "success";
}

# Parantheses perform sub-matches. 
# After a successful match operation is performed, the sub-matches get stuffed into
# the built-in variables $1, $2, $3.

print $1; # "Hello";
print $2: # "World";

# In list context =~ m// return $1,$2 ... as a list

my $string = "colourless green ideas sleep furiously";
my @matches = $string =~ m/(\w+)\s+((\w+)\s+(\w+))\s+(\w+)\s+(\w+)/;

print join ", ", map { "'".$_."'" } @matches;
# prints "'colourless', 'green ideas', 'green', 'ideas', 'sleep', 'furiously'"


