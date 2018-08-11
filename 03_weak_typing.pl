# It is impossible to determine whether a scalar contains a "number" or a "string". 
# More precisely, it should never be necessary to do this.
# Whether a scalar behaves like a number or a string depends on the operator with which it is used.
# When used as a string, a scalar will behave like a string.
# When used as a number, a scalar will behave like a number (raising a warning if this isn't possible)
use strict;
use warnings;

my $str1 = "4G";
my $str2 = "4H";

print $str1 .  $str2;  # "4G4H"
print $str1 +  $str2;  # "8" with 2 warnings
print $str1 eq $str2;  # ""  (empty string, i.e. false)
print $str1 == $str2;  # "1" with 2 warnings

# The classic errorr
print  "yes" == "no"; # "1" with 2 warnings; both values evaluate to 0 when used as numbers

# There are separate operators for comparing scalars as numbers and comparing scalars as as strings

# Numerical operators: <, >, <=, >=, ==, !=, <=>, +, *
# String    operators: lt, gt, le, ge, eq, ne, cmp, ., X
