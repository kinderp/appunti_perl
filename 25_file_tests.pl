# The function -e is a built-in function which tests whether the named file exists.

print "what" unless -e "/usr/bin/perl";

# The function -d is a built-in function which tests whether the named file is a directory.

# The function -f is a built-in function which tests whether the named file is a plain file.

# These are just three of a large class of functions of the form -X where X is some lower- or upper-case letter. 
# These functions are called file tests. 
# 
# Note the leading minus sign. In a Google query, the minus sign indicates to exclude results containing this search term. 
# This makes file tests hard to Google for! Just search for "perl file test" instead.

