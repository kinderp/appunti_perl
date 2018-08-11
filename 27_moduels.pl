# In Perl, modules and package are different things.

# MODULE
#
# A module is a .pm file that you can include in another Perl file (script or module).
# A module is a text file with exactly the same syntax  as .pl Perl script.
# An example module might be located at C:\foo\bar\Demo\StringUtils.pm or  /foo/bar/baz/Demo/StringUtils.pm
# and read as follows.

use strict;
use warnings;

sub zombify {
	my $word = shift @_;
	$word =~ s/[aeiou]/r/g;
	return $word;
}

return 1;

# Because a module is exevuted from top to bottom when it is loaded, 
# you need to return a true value at the end to show that is was loaded 
# successfully

# So that the Perl interpreter can find them, directories  containing Perl modules should be listed 
# in your environment variable PERL5LIB before calling perl.
# List the root dir containing the modules, don't list the module directories or the modules themselves.
#
# set PERL5LIB="C:\foo\bar\baz;%PERL5LIB%"
#
# or
#
# export PERL5LIB="/foo/bar/baz:$PERL5LIB"

# Once the Perl module is created and perl knows where to look  for it, you can use require built-in function
# to search for and execute it during a Perl script.
# For example, calling 
# require Demo::StringUtils 
# causes the Perl interpreter to search eacnh directory listed in PERL5LIB in turn, looking for a file called
# Demo/StringUtils.pm
#
# Afeter the module has been executed, the subroutines that were defined there suddently become available to the
# main script.
#
# Our example script might be called main.pl and read as follows:

use strict;
use warnings;

require Demo::StringUtils;

print zombify("i want brains"); # "r wrnt brrrns"

# Note the uae of the double colon :: as a directory separator
#
# Now a proble surface: if main.pl contains manu require calls, and each of the modules so loaded
# contains more require calls, then it can become difficult to track down the original declaration
# of zombify() sub. The solution to this problem is to use packages.



































