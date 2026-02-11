package Getopt::Long::Descriptive::Tiny;

# ABSTRACT: Getopt::Long, but simpler and more powerful with no dependencies
# VERSION

use warnings;
use 5.040;
use Exporter qw( import );

our @EXPORT_OK = qw( describe_options );

=head1 FUNCTIONS

=head2 describe_options

=cut

sub describe_options ( $usage_desc, @options ) {
    my $opt = Getopt::Long::Descriptive::Tiny::Options->new( usage_desc => $usage_desc );
    return ($opt, $opt->usage);
}

use experimental qw( class );

class Getopt::Long::Descriptive::Tiny::Options;

field $usage_desc :param :reader;

method usage {
    return $usage_desc;
}
