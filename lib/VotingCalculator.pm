#############################################################################
#
#  VotingCalculator.pm
#
#  Calculates vote outcomes
#
#############################################################################

package VotingCalculator
use version; our $VERSION = qv("v1.0.0");

use strict;
use warnings;
use diagnostics;

use Moose;
use namespace::autoclean;
use FindBin;

use lib "$FindBin::Bin/../lib/";
use VotingCalculator::Decision;

#---------------- Methods ----------------#

sub calculate {
    my $self = shift;
    my $voting_system = shift;
    my $community = shift;
    my $chocies = shift;
    my $vote_results = shift;

    my $decision = VotingCalculator::Decision->new( voting_system => $voting_system, community => $community, choices => $choices, vote_results => $vote_results );

    return $decision->get_outcome();
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

