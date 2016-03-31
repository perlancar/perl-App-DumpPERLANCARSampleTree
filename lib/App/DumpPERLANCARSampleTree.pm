package App::DumpPERLANCARSampleTree;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our %SPEC;

$SPEC{bencher_all} = {
    v => 1.1,
    args => {
        size => {
            schema => ['str*'],
            req => 1,
            pos => 0,
        },
    },
    result_naked => 1,
    'cmdline.skip_format' => 1,
};
sub bencher_all {
    require PERLANCAR::Tree::Examples;
    require Tree::Dump;

    my %args = @_;

    Tree::Dump::tdmp(PERLANCAR::Tree::Examples::gen_sample_tree(size => $args{size}));
}

1;
# ABSTRACT:
