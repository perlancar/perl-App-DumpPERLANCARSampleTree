package App::DumpPERLANCARSampleTree;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use PERLANCAR::Tree::Examples qw(gen_sample_tree);

our %SPEC;

$SPEC{dump_perlancar_sample_tree} = {
    v => 1.1,
    summary => 'Dump tree from PERLANCAR::Tree::Examples',
    args => {
        size => {
            schema => $PERLANCAR::Tree::Examples::SPEC{gen_sample_tree}{args}{size}{schema},
            req => 1,
            pos => 0,
        },
        backend => {
            schema => $PERLANCAR::Tree::Examples::SPEC{gen_sample_tree}{args}{backend}{schema},
        },
    },
    result_naked => 1,
    'cmdline.skip_format' => 1,
};
sub dump_perlancar_sample_tree {
    require Tree::Dump;

    my %args = @_;

    Tree::Dump::tdmp(gen_sample_tree(
        size => $args{size},
        backend => $args{backend},
    ));
}

1;
# ABSTRACT:
