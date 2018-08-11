# Perl's most distinctive feature is that its code is context-sensitive.
# Every expression in Perl is evaluated either in scalar context or list context
# depending on whether it is expected to produce a scalar or a list.
# Without knowing the context in which an expression is evaluated, it is impossible 
# to determinate what it will evaluate to.
#
# A scalar assignment such as my $scalar =   evaluate its expression  in scalar context
use strict;
use warnings;

my $scalar = "Mendeleev";

# An array or hash assignment such as my @array = or my %hash = evaluates its expression in list context.

my @array = ("Alpha", "Beta", "Gamma", "Pie");
my %hash  = ("Alpha" => "Beta", "Gamma" => "Pie");

# Here the expression ("Alpha", "Beta", "Gamma", "Pie") ("Alpha" => "Beta", "Gamma" => "Pie") are equivalent.

# A scalar expression evaluated in a list context is silently converted into a single-element list

my @array = "Mendeleev"; # same as 'my @array = ("Mendeleev")'

# An array expression evaluated in scalar context returns the length of the array

my @array = ("Alpha", "Beta", "Gamma", "Pie");
my $scalar = @array;
print $scalar ; # "4"

# A list expresssion (a list is different from an array, remember?) evaluated in scalar context 
# return not the length of the list but the final scalar in the list

my $scalar = ("Alpha", "Beta", "Gamma", "Pie");
print $scalar; # "Pie"

# The print built-in function evaluates all of its arguments in list context.
# In fact, print accepts an unlimited list of arguments and prints each one after the other
# which means it can be used to print arrays directly

my @array  = ("Alpha","Beta","Goo");
my $scalar = "-X-";
print @array;		   # "AlphaBetaGoo"
print $scalar, @array, 98; # "-X-AlphaBetaGoo98"

# Caution!
# Many Perl expression and built-in functions diplay readically different behaviour on the context
# in which the are evaluated.
# The most prominent examples is the function reverse.
# In the list context, reverse treats its arguments as a list, and reverse the list.
# In scalar context, reverse concatenates the whole list together and the reverse it as a single word

print scalar reverse "hello world"; # "dleow olleh"

# Remember how we used scalar earlier, to get the length of an array?

