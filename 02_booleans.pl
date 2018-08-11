# Perl has no boolean data type. 
# A scalar in a if statement evaluates to boolean "false" if and only if it is one of the following
# - 1 - undef
# - 2 - number 0
# - 3 - string ""
# - 4 - string "0"
#
# The perl documentatation claims tha functions return "true" or "false" values in certain situations.
# In practice:
#  when a function is claimed to return "true" it usually returns 1
#  when a function is claimed to return "false"it returns the empty string ""
