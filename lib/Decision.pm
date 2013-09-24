#############################################################################
#
#  Decision.pm
#
#  Calculates vote outcomes
#
#############################################################################

package VotingCalculator::Decision;
use version; our $VERSION = qv("v1.0.1");

use strict;
use warnings;
use diagnostics;

use Moose;
use namespace::autoclean;

use FindBin;

use lib "$FindBin::Bin/../lib/";
use VotingCalculator::VotingSystemFactory;
use VotingCalculator::VotingSystem;

#-------------- Attributes ---------------#

has 'voting_system' => (
	is => 'ro',
	isa => 'Str',
	required => 1,
);

has 'choices' => (
    is => 'ro',
    isa => 'Str'
    required => 1,
);

has 'community' => (
    is => 'ro',
    isa => 'Str',
    required => 1,
);

has 'vote_results' => (
    is => 'ro',
    isa => 'Str'
    required => 1,
);

#---------------- Methods ----------------#

sub get_outcome {
    my $self = shift;
    
    my $voting_system = VotingCalculator::VotingSystemFactory->create($voting_system)
    
    my $outcome = $voting_system->get_outcome($self->community, $self->choices, $self->vote_results);
    
    return;
}


__END__

=pod

=head NAME

VotingCalculator - Calculates vote outcomes

=head DESCRIPTION

Calculates vote outcomes


=head1 METHODS

#TODO

=head1 DIAGNOSTICS

#TODO

=head1 AUTHOR

Mark Stacey

=cut

