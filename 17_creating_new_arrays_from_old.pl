use strict;
use warnings;

# Perl provides the following functions which act on arrays to create other arrays

# the join function concatenates many strings into one.

my @elements = ("Antimony", "Arsenic", "Aluminium", "Selenium");
print @elements;		# "AntimonyArsenicAluminiumSelenium"
print "@elements";		# "Antimony Arsenic Aluminium Selenium"
print join(", ", @elements); 	# "Antimony, Arsenic, Aluminium, Selenium"

# In the list context, the reverse function returns a list in reverse order.
# In scalar context reverse concatenates the whole list together and the reverse it as a single word

print reverse("Hello", "World");	# "WorldHello"
print reverse("HelloWorld");		# "HelloWorld"
print scalar reverse("HelloWorld");	# "dlroWolleH"
print scalar reverse("Hello", "World"); # "dlroWolleH"

# The map  function takes an array as input and applies an operation to every scalar $_ in this array.
# It the constructs a new array out of the results.
# The operation to perform is provided in the form of a single expression inside braces.

my @capitals = "Baton Rouge", "Indianapolis", "Columbus", "Montgomery", "Helena", "Denver", "Boise");

print join ", ", map { uc $_ } @capitals; 
# "BATON ROUGE, INDIANAPOLIS, COLUMBUS, MONTGOMERY, HELENA, DENVER, BOISE"

# The grep function takes an array as input and returs a filtered array as ouput.
# The syntax is similar to map.
# This time, the second argument is evaluated for each scalar $_ in the input array.
# If a boolean true value is returned, the scalar is put into the output array, otherwise not.

print join ", ", grep { length $_ == 6 } @capitals;
# "Helena, Denver"

# Obviously, the length of the resulting array is the number  of successful matches, 
# which means you can use grep to quickly check whether an array contains an element.

print scalar grep { $_ eq "Columbus" } @capitals; # "1"

# grep and map may be combined to form list comprehensions, an exceptionally powerful feature
# conspicuosly absent from many other programming languages.

# By default, the sort function returns the input array, sorted into lexical (alphabetical) order

my @elevations = (19, 1, 2, 100, 3, 98, 100, 1056);
print join ", ", sort @elevations;
# "1, 100, 100, 1056, 19, 2, 3, 98"

# However, similar to grep and map, you may supply some code of your own.
# Sorting is always performed using a series of comparisons between two elements.
# Your block receive $a and $b as inputs and should return 
# -1  if  $a is "less then" $b
#  1  if  $a is " greater then" $b

# the cmp operator does exactly this for strings

print join ", ", sort { $a cmp $b } @elevations;
# "1, 100, 100, 1056, 19, 2, 3, 98"

# The "spaceship" operator <=> does the same for numbers

print join ", ", sort { $a <=> $b } @elevations;
# "1, 2, 3, 19, 98, 100, 100, 1056"

# $a and $b are always scalars, 
# but they can be references to quite complex objects which are difficult to compare
# If you need more space for comparison, you can create separate subroutine and provide its name instead.

sub comparator {
	# lots of code ...
	# return -1, 0 or 1
}

print join ", ", sort comparator @elevations;

# You can't do this for grep and map operations

# Notice how the subroutine and block are never explicity provided with $a and $b.
# Like $_, $a and $b are, in fact, global variables which are populated with a pair
# of values to be compared each time

