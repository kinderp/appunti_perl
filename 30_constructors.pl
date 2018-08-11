# A constructor is a class method which returns a new object.
# If you want one, just declare on.
# You can use any name you like, the first argument passed it not an object
# but a class name. In this case Animal.

use strict;
use warnings;

package Animal;

sub  new {
	my $class = shift @_;
	return bless { "legs" => 4. "colour" => "brown" }, $class;
}

# ... etc

# and the use it like so

my $animal = Animal->new();
