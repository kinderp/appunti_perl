use strict;
use warnings;

# There's more than one way to unpack @_, but some are superior to others.
#
# The example subroutine left_pad below pads a string out to the required length using the supplied pad character.
# The x function concatenates multiple copies of the same string in a row.

# ledt_pad is typically invoked as follows
# print left_pad("hello", 10, "+"); # "+++++hello"

# 1. Unpacking @_ entry by entry is effctive but not pretty

sub left_pad {
	my $oldstring = $_[0];
	my $width     = $_[1];
	my $padChar   = $_[2];
	my $newString = ( $padChar x ($width - length $oldString) ) . $oldString;
	return $newString;
}

# 2. Unpacking @_ by removing data from it using shift is reccomended for up to 4 arguments

sub left_pad {
	my $oldString = shift @_;
	my $width     = shift @_;
	my $padChar   = shift @_;
	my $newString = ( $padChar x ($width - length $oldString) ) . $oldString;
	return $newString;
}

# if no array is provided to the shift function, then it operates on @_ implicitly.
# this approch is seen very common

sub left_pad {
	my $oldString = shift;
	my $width     = shift;
	my $padChar   = shift;
	my $newString = ( $padChar x ($width - length $oldString) ) . $oldString;
	return $newString;
}

# Beyond 4 arguments it becomes hard to keep track of what is being assigned where
# 3. You can unpack @_ all in one go using multiple simoultaneous scalar assignment.
#    Again, this okay for up to 4 arguments

sub left_pad {
	my ($oldString, $width, $padChar) = @_;
	my $newString = ( $padChar x ($width - length $oldString) ) . $oldString;
	return $newString;
}

# 4. For subroutines with large numbers of arguments 
#    or where some arguments are optional or cannot be used in combination with others,
#    beat practices is to require the user to provide a hash of arguments when calling the sub
#    and then unpack @_ back into the hash of arguments.
#    For this approach, our subroutines call would look a little different.
#
#    print left_pad("oldString" => "pod", "width" => 10, "padChar" => "+");
#
#    and the subroutine itself looks like this:

sub left_pad {
	my %args = @_;
	my $newString = ($args{"padChar"} x ($args{"width"}) - length $args{"oldString"})) . $args{"oldString"};
	return $newString;
}
