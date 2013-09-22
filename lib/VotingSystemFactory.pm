#############################################################################
#
# VotingSystemFactory.pm
#
# Abstract factory for constructing voting system modules
#
#############################################################################

package VotingCalculator::VotingSystemFactory;
use version; our $VERSION = qv("v1.0.0");

use strict;
use warnings;
use diagnostics;


use MooseX::AbstractFactory;
use FindBin;

use lib "$FindBin::Bin/../lib/";

implementation_does [qw( MyExperience::VotingSystem )];
implementation_class_via sub { 'MyExperience::VotingSystems::' . shift};

1;

__END__

=pod

=head NAME

#TODO

=head DESCRIPTION

#TODO

=head1 METHODS

#TODO

=head1 DIAGNOSTICS

#TODO

=head1 AUTHOR

Mark Stacey

=cut
