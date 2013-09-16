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
use VotingCalculator;

#----------------- Main ------------------#

MAIN: {
    my ($opt_voting_system, $opt_community, $opt_choices, $opt_vote_results)
    my ($opt_help, $opt_man, $opt_version);

    GetOptions(
        'system|voting_system:s' => \$opt_voting_system,
        'community:s'            => \$opt_community,
        'candidates|choices:s'   => \$opt_choices,
        'votes|vote_results:s'   => \$opt_vote_results,
        'help|h'                 => \$opt_help,
        'man'                    => \$opt_man,
        'version|v'              => \$opt_version,
    ) or pod2usage(-verbose => 1) && exit(1);

    pod2usage(-verbose => 1) && exit(0) if defined $opt_help;
    pod2usage(-verbose => 2) && exit(0) if defined $opt_man;
    
    if (! defined $opt_voting_system || ! defined $opt_community || ! defined $opt_choices || ! defined $opt_vote_results) {
        pod2usage(-verbose => 1) && exit(1);
    }
    
    my $outcome = VotingCalculator->new()->calculate();
    
    use Data::Dumper;
    print Dumper($outcome);
    
    exit(0);
}


__END__

=pod

=head1 NAME

voting_calculator - CLI for the voting calculator.


=head1 SYNOPSIS
    
    voting_calculator.pl [--voting_system system] [--community community]
                    [--choices choices] [--votes votes]
                    [--version] [--man] [--help]


=head1 DESCRIPTION

This script is used to calculate vote results with particular voting
systems, choices, communities, and vote distributions. Given the details
about which system is used and what votes were cast, this script will output
the result of the election (i.e. which choice won/lost, and any other
relevant statistics)


=head1 OPTIONS

#TODO: list options


=head1 DIAGNOSTICS

#TODO: list errors printed to STDERR/STDOUT


=head1 AUTHOR

=over

=item Mark Stacey

=back


=head1 LICENSE

Copyright (C) 2013 Bell Aliant - All Rights Reserved


=cut

