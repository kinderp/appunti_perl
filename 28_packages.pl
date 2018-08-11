# A package is a namespace in which subroutines can be decalred.
# Any subroutine you declare is implicitly declared within the current package.
#
# A the beginning of execution, you are in the main package.
# You can switch package using the package built-in function

use strict;
use warnings;

sub subroutine {
	print "universe";
}

package Food::Potatoes;

# no collision

sub subroutine {
	print "kingedward";
}

# Note the use of the double colon :: as a namespace separator
#
# Any time you call a subroutine, you implicitly call a subroutine which is inside the current package.
# Alternatively, you can explicitly provide a package.
# See what happens if we continue the above script

subroutine();			# "kingedward"
main::subroutine();		# "universe"
Food::Potatoes::subroutine();	# "kingedward"

# So the logical solution to the problem descrived above is to modify 
# C:\foo\bar\baz\Demo\StringUtils.pm or
# /foo/bar/baz/Demo/StringUtils.pm to read

use strict;
use warnings;

package Demo::StringUtils;

sub zombify {
	my $word = shift @_;
	$word =~ s/[aeiou]/r/g;
	return $word;
}

return 1;

# And modify main.pl to read

use strict;
use warnings;

require Demo::StringUtils;

print Demo::StringUtilis::zombify("i want brains");

# Now read this next bit carefully
#
# Packages and modules are two completely separate and distinct features of the Perl programming language.
# The fact that they both use the same double colon delimiter is a hufe red herring.
# It is possible to switch packages multiple times over the course of a scirpt or modules, and it is possible
# to use the same package declarion in multiple locations in multiple files.
# Calling require Foo::Bar does not look for and load a file with a package Foo::Bar declaration somowhere inside it
# nor does is necessarily load subroutines in Foo::Bar namespace.
# Calling require Foo::Bar  merely loads a file called Foo/Bar.pm, which need not have any kind of package declaration
# inside it at all.

# Likewise, a subroutine call Baz::Qux::processThis89 need not necessarily have been declared inside a file named Baz/Qux.pm
# It could have been declared literally anywhere.
#
# Separating these two concepts is one ot hthe stupidest features of Perl.
#
# Fortunately for use, the majority of Perl programmes obey the following two laws.
#
# - 1 - A perl script (.pl file) must always contain exactly zero package declarations.
# - 2 - A perl module (.pm dile) must always contain exactly one  package declaration, corresponding exactly to its name and location
# E.g. module Demo/StringUtils.pm must begin with package Demo::StringUtilis
#
# Because of this, in practice you will find that most "packages" and "modules" produced by reliable third parties can be regarded and 
# referred to interchangeably. 
# However, it is important that you do not take this for granted, because one day you will meet code produced by a madman.





































