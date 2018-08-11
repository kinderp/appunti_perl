use strict;
use warnings;

# You can exti from a Perl script with the return code of your choice (from 0 to 255) using exit.
#
# Perl provides more than one wat to - in a single call - spawn a child process, pause the current script 
# until the child process has finished and then resume interpretation of the current script.
# 
# Whichever method is used, you will find that immediately afterwards, the built-in scalar variable $?
# has been populated with the status word that was returned from that child process's termination.
#
# Yuo can get the return code by taking just the highest 8 of those 16 bits $? >> 8

# The system function cab be used to invoke another program with the arguments listed.
# The value returned by system is the same value with which $? is populated.

my $rc = system "perl", "anotherscript.pl", "foo", "bar", "baz";
$rc >>= 8;
print $rc ; # "37"

# Alternatively, you can use backticks `` to run an actual command at the command line and capture the standard
# output from that command. 
# In scalar context the entire output is returned as a single string. 
# In list context, the entire output is returned as an array of strings, each one representing a line of output.

my $text = `perl anotherscript.pl foo bar baz`;
print $text; # "foobarbaz"

# this is the behaviour wchich would be seen if anotherscript contained, for example
#
# use strict;
# use warnigns;
#
# print @ARGV;;
# exit 37;
