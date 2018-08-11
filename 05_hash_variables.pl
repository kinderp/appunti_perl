# A hash variable is a list of scalars indexed by strings. 
# In Python this is known as a dictionary.
# In PHP it is known as an array.

my %scientists = (
	"Newton" => "Isaac",
	"Einstein" => "Albert",
	"Darwin" => "Charles",
):

# Notice how similar this declaratio is to an array declaration.
#
# In fact, the double arrow symbol => is called a "fat comma", because
# it is just a synonym for the somma separator.
#
# A hash is declared using a list with an even number of elements, where 
# the even-numberd elements (0,2,...) are all taken as strings.

# Once again, you have to use a dollar sign to acces a value from hash,
# because the value being retireved is not a hash but a scalar.

print %scientists{"Newton"};   # "Isaac"
print %scientists{"Einstein"}; # "Albert"
print %scientists{"Darwin"};   # "Charles"
print %scientists{"Dyson"};    # return undef, prints "" and raises a warning

# Note.
# the braces are used here. Again there is no collision between a scalar $var and a hash %var
# containing a scalar entry $var{"foo"}

# You can convert a hash straight to an array with twice as many entries, alternating between
# key and value (and the reverse is equallly easy)

my @scientists = %scientists;

# However, unlike an array, the keys of a hash have no underlying order. They will returned in whatever order
# is more efficient. So, notice the rearrenged order but preserved pairs in the resulting array.

print "@scientists"; # something like "Einstein Albert Darwin Charles Newton Isaac";

# To Recap:
# You have to use square brackets to retrieve a value from an array
# You have to use braces to retrieve a value from hash.
#
# The square brackets are effectively a numerical operator 
# The braces are effectively a string operator

# The fact that the index supplied is a number or a string is of absolutely no significance.

my $data = "orange";
my @data = ("purple");
my %data = ( "0" => "blue");

print $data;	  # "orange"
print $data[0];	  # "purple"
print $data["0"]; # "purple"
print $data{0};   # "blue"
print $data{"0"};  # "blue"



