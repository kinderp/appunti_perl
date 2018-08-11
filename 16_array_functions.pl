use strict;
use warnings;

# In-place array modification
# We'll use @stack to demonstrate these

my @stack = ("Fred", "Eileen", "Denise", "Charlie");
print @stack; # "FredEilenDeniseCharlie"

# pop extracts and returns the final element of the array. 
# this can be thouhfht of as the top the stack

print pop @stack; # "Charlie"
print @stack;     # "FredEileenDenise"

# push appends extra elements to the end of the array

push @stack, "Bob", "Alice";
print @stack; # "FredEileenDeniseBobAlice"

# shift extracts and returns the first element of the array

print shift @stack; # "Fred"
print @stack; 	    # "EileenDeniseBobAlice"

# unshift insert new element at the beginning of the array

unshift @stack, "Hunt", "Grace";
print @stack; # "HuntGraceEileenDeniseBobAlice"

# pop push shift unshift are all special cases of slice.
# splice removes and returns an array slice, replacing it with a different  array slice.

print splice(@stack, 1, 4, "<<<", ">>>"); # "GraceEileenDeniseBobAlice"
print @stack;				  # "Grace<<<Denise>>>Alice"

