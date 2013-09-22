#############################################################################
#
#  VotingSystem.pm
#
#  Moose role for voting systems.
#
#############################################################################

package VotingCalculcator::VotingSystem;
use version; our $VERSION = qv("v1.0.0");

use strict;
use warnings;
use diagnostics;

use Moose::Role;
use Moose::Util::TypeConstraints;
use namespace::autoclean;
use FindBin;

use lib "$FindBin::Bin/../lib/";

#----------------- Attributes ------------------#


has 'name' => (
    is => 'ro',
    isa => 'Str',
    required => 1,
);

#-------------- Method Modifiers ---------------#

requires 'get_outcome';


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
