package Module::Features::Set;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our %FEATURES_DEF = (
    v => 1,
    summary => 'Features of modules that handle set data structure',
    features => {
        can_insert_value                         => {summary => 'Provide a way for user to insert a value to a set', tags=>['category:basic']},
        can_delete_value                         => {summary => 'Provide a way for user to delete a value from a set', tags=>['category:basic']},
        can_search_value                         => {summary => 'Provide a way for user to search a value in a set', tags=>['category:basic']},
        can_count_values                         => {summary => 'Provide a way for user to get the number of values in a set', tags=>['category:basic']},

        can_compare_sets                         => {summary => 'Provide a way for user to check the equality of two sets', tags=>['category:sets']},

        speed                                    => {summary => 'Subjective speed rating, relative to other set modules', schema=>['str', in=>[qw/slow medium fast/]], tags=>['category:speed']},

        memory_overhead                          => {summary => 'Subjective memory overhead rating, relative to other set modules', schema=>['str', in=>[qw/low medium high/]], tags=>['category:memory_overhead']},
    },
);

1;
# ABSTRACT: Features of modules that generate text tables

=head1 SEE ALSO

L<Module::Features>
