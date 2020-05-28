package Bencher::Scenario::StringSimpleEscape;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark String::SimpleEscape',
    participants => [
        {fcall_template => 'String::Escape::backslash(<str>)'},
        {fcall_template => 'String::Escape::unbackslash(<str>)'},
        {fcall_template => 'String::SimpleEscape::simple_escape_string(<str>)'},
        {fcall_template => 'String::SimpleEscape::simple_unescape_string(<str>)'},
    ],
    datasets => [
        {name=>'str0', args=>{str=>''}},
        {name=>'a100', args=>{str=>'a' x 100}},
        {name=>'backslash100', args=>{str=>"\\" x 100}},
    ],
};

1;
# ABSTRACT:

=head1 DESCRIPTION
