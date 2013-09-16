#############################################################################
#
#  Decision.pm
#
#  Calculates vote outcomes
#
#############################################################################

package VotingCalculator::Decision;
use version; our $VERSION = qv("v1.0.0");

use strict;
use warnings;
use diagnostics;

use Moose;
use namespace::autoclean;
use FindBin;

use lib "$FindBin::Bin/../lib/";

#-------------- Attributes ---------------#

has 'voting_system' => (
	is => 'ro',
	isa => 'Str',
	required => 1,
);


__END__

=pod

=head NAME

VotingCalculator - Calculates vote outcomes

=head DESCRIPTION

Calculates vote outcomes

=cut

