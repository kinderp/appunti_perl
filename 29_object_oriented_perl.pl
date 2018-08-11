# Perl is not a great language for OO programming.
# Perl's OO capabilities were grafted on after the fact, and this shows
#
# - 1 - An object is simply a reference (i.e. a scalar variable) which happens to know
#       which class its referent belongs to.
#       To tell a reference that its referent belongs to a class, use bless.
#       To find out what class a referece's referent belongs to (if any)  use ref.
#
# - 2 - A method is simply a subroutine that expects an object (or, in the case of class
#       methods, a package name) as its first argument.
#       Object methods are invoked using $obj->method(); 
#       Class  methods are invoked using Package::Name->method()
#
# - 3 - A class is simply a package that happens to contain methods

# A quick example makes this cleared.
# An example module Animal.pm containing a class Animal reads like this:

use strict;
use warnings;

package Animal;

sub eat {
	# First argument is always the object to act upon.
	my $self = shift @_;

	foreach my $food ( @_ ) {
		if($self->can_eat($food)) {
			print "Eating ", $food;
		}else {
			print "Can't eat ", $food;
		}
	}
}

# For the sake of argument, assume an Animal can eat anything.

sub can_eat {
	return 1;
}

return 1;

# And we might use of this class like so:

use strict;
use warnings;

require Animal;

my $animal = {
	"legs" 	 => 4,
	"colour" => "brown",
};			 # $animal is an ordinary hash reference

print ref $animal;	 # "HASH"
bless $animal, "Animal"; # now it is an object of class "Animal"
print ref $animal;	 # "Animal"

# Note
# literally any  reference can be blessed into any class.
# It's up to you ensure that.
# - 1 - the referent can actually be used as an instance of this class
# - 2 - the class in question exists and has been loaded

# you can still work with the original hash in the usual way

print "Animal has ", $animal->{"legs"}, " les(s)";

# But you can now also call methods on the object using the same -> operator, like so

$animal->eat("insects", "curry", "eucalyptus");

# This final call is equivalent to Animal::eat($animal, "insects", "curry", "eucaliyptus")
































































