use Test2::V0 -no_srand => 1;
use Getopt::Long::Descriptive::Tiny qw( describe_options );

subtest 'basic' => sub {

    is(
        [describe_options '%c %o'],
        array {
            item object {
                prop isa => 'Getopt::Long::Descriptive::Tiny::Options';
                call usage_desc => '%c %o';
            };
            item string '%c %o';
        },
    );
};

done_testing;


