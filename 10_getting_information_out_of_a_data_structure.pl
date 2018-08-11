use strict;
use warnings;

my %account = (
        "number" => "31415926",
        "opened" => "3000-01-01",
        "owners" => [
                {
                        "name" => "Philip Fry",
                        "DOB" => "1974-08-06",
                },
                {
                        "name" => "HUbert Farnsworth",
                        "DOB"  => "2841-04-09",
                },
        ],
);

# Now, let's assume that you still have %account kicking around but everything else (if there was anything else) has fallen out of scope.
# You can print the information out by reversing the same procedure in each  case.
# Again, here are four examples, of which hte last is the most useful.

my $ownersRef = $account{"owners"};
my @owners    = @{ $ownersRef };
my $owner1Ref = $owners[0];
my $owner1    = %{ $ownwe1Ref };
my $owner2Ref = $owners[1];
my $owner2    = ${ $owner2Ref };

print "Account #", $account{"number"}, "\n";
print "Opened on ", $account{"opened"}, "\n";
print "Joint owners:\n";
print "\t", $owner1{"name"}, " (born ", $owner1{"DOB"}, ")\n";
print "\t", $owner2{"name"}, " (born ", $owner2{"DOB"}, ")\n";

# Or for short

my @owners = @{ $account{"owners"} };
my %owner1 = %{ $owners[0] };
my %owner2 = %{ $owners[1] };
print "Account #", $account{"number"}, "\n";
print "Opened on ", $account{"opened"}, "\n";
print "Joint owners:\n";
print "\t", $owner1{"name"}, " (born ", $owner1{"DOB"}, ")\n";
print "\t", $owner2{"name"}, " (born ", $owner2{"DOB"}, ")\n";

# Or using references and the -> operator

my $ownersRef = $account{"owners"};
my $owner1Ref = $ownersRef->[0];
my $owner2Ref = $ownersRef->[1];
print "Account #", $account{"number"}, "\n";
print "Opened on ", $account{"opened"}, "\n";
print "Joint owners:\n";
print "\t", $owner1Ref->{"name"}, " (born ", $owner1Ref->{"DOB"}, ")\n";
print "\t", $owner2Ref->{"name"}, " (born ", $owner2Ref->{"DOB"}, ")\n";

# And if we completely skip all the intermediate values

print "Account #", $account{"number"}, "\n";
print "Opened on ", $account{"opened"}, "\n";
print "Joint owners:\n";
print "\t", $account{"owners"}->[0]->{"name"}, " (born ", $account{"owners"}->[0]->{"DOB"}, ")\n";
print "\t", $account{"owners"}->[1]->{"name"}, " (born ", $account{"owners"}->[1]->{"DOB"}, ")\n";




