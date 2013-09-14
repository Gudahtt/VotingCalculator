#!/usr/bin/perl
##############################################################################
#
# Copyright (C) 2013 Mark Stacey - All Rights Reserved
#
# voting_calculator.pl
#
# CLI for the voting calculator.
#
##############################################################################

use version; our $VERSION = qv('v1.0.0');

use strict;
use warnings;
use diagnostics;

use English qw(-no_match_vars);
use Getopt::Long;
use Pod::Usage;
use FindBin;

use lib "$FindBin::Bin/../lib/";

#----------------- Main ------------------#

MAIN: {
    my ($opt_voting_system, $opt_community, $opt_candidates, $opt_votes)
    my ($opt_help, $opt_man, $opt_version);

    GetOptions(
        'system|voting_system:s' => \$opt_voting_system,
        'community:s'            => \$opt_community,
        'candidates:s'           => \$opt_candidates,
        'votes:s'                => \$opt_votes,
        'help|h'                 => \$opt_help,
        'man'                    => \$opt_man,
        'version|v'              => \$opt_version,
    ) or pod2usage(-verbose => 1) && exit;

    pod2usage(-verbose => 1) && exit if defined $opt_help;
    pod2usage(-verbose => 2) && exit if defined $opt_man;
    
    
    exit(0);
}


__END__

=pod

=head1 NAME

voting_calculator - CLI for the voting calculator.


=head1 SYNOPSIS
    
    voting_calculator.pl [--voting_system system] [--community community]
                    [--candidates candidates] [--votes votes]
                    [--version] [--man] [--help]


=head1 DESCRIPTION

This script is used to calculate election results with particular voting
systems, candidates, communities, and vote distributions. Given the details
about which system is used and what votes were cast, this script will output
the result of the election (i.e. which candidates won/lost, and any other
relevant statistics)


=head1 OPTIONS

#TODO: list options


=head1 DIAGNOSTICS

#TODO: list errors printed to STDERR/STDOUT


=head1 HISTORY

Changelog:

    2013.09.14 v1.0.0
        - Initial commit


=head1 AUTHOR

=over

=item Mark Stacey

=back


=head1 LICENSE

Copyright (C) 2013 Bell Aliant - All Rights Reserved


=cut

