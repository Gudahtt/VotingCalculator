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
use VotingCalculator::VotingSystem;


implementation_does [qw( VotingCalculator::VotingSystem )];
implementation_class_via sub { 'VotingCalculator::VotingSystems::' . shift};

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
