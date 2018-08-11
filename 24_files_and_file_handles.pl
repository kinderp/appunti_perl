use strict;
use warnings;

# A scalar variable may contain a file handl instead of a number/string/reference or undef,
# A file handle  is essentially a reference to a specific location inside a specific file.
#
# Use open to turn a scalar variable into a file handler.
# open must be supplied with a mode.
# The mode < indicated taht we wish to open the file to read from it.

my $f = "text.txt";
my $result = open my $fh, "<", $f;

if(!$result) {
	die "Could not oopen '" . $f . "' for reading because: " . $!;
}

# If successful, open returns a true value. Otherwise, it returns false and an error message
# is stuffed into the built-in variable $!.
# As seen above, you should always checkout the open operation completed successfully.
# This checking being rather tedious, a common idiom is:

open(my $fh, "<", $f) || die "Couldn't open '"" . $f . "' for reading because: " . $!;

# Note the need for parentheses around the open call's arguments.

# To read a line of text from a filehandle use the readline built-in function.
# readline returns a full line of text, with a line break intact at the end of it
# or undef if you've reached the end of the file

while(1) {
	my $line = readline $fh;
	last unless defined $line;
	#process the line
	print $line
}

# To trunctate that possible triling line break, use chomp
#
# chomè $line;
#
# Note that chomp acts on $line in place. 
#
# $line = chomp $line; is probably not what you want

# You can also use eof to detect that the end fo the file has been reached

while(!eof $fh) {
	my $line = readline $fh;
	# process $line ...
	print $line;
}

# But beware of just using
#
# while(my $line = readline $fh)
#
# because if $line out to be "0" the loop will terminate early
# If you want to write something like that
# Perl provides the <> operator which wraps up readline in a fractionaly safe way.
#
# This is very commonly-seen and perfectly safe:

while(my $line = <$fh>) {
	# process $line
	print $line
}

# and even

while(<$fh>) {
	# process $_ ...
	print $_;
}

# Writing to a file involves first opening it in a differnt modo.
# Mode > indicates we wish open the file to write it
# Mode >> append to an existing file
#
# Then simply provide the filehandle as a zeroth argument for the print function

open(my $fh2, ">", $f) || die "Couldn't open '" . $f ."' for writing because: " . $!;
print $fh2 "the eagles have left the nest";

# Notice the absence of a comma between $fh2 and the next argument

# File handles are actuallu closed automatically whrn they drop out of scope, but otherwise:

close $fh2;
close $fh1;

# Three filehandlees exists as a global contansts: STDIN, STDOUT, STDERR.
# These are open automatically whrn the script starts.
# To read a single line fo user input:

my $line = <STDIN>;

# To just wait for ther user to hit Enter:

<STDIN>;

# Calling <> with no filehandle reads data from STDIN, 
# or from any files named in arguments when the Perl script was called.

# As you may have gathered, print prints to STDOUT by defualt if no filehandle is named.

































# 
