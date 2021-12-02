package Module::Features::Set;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our %FEATURES_DEF = (
    v => 1,
    summary => 'Features of modules that handle set data structure',
    features => {
        can_insert_value                         => {summary => 'Provide a way for user to insert a value to a set', tags=>['category:basic']},
        can_delete_value                         => {summary => 'Provide a way for user to delete a value from a set', tags=>['category:basic']},
        can_search_value                         => {summary => 'Provide a way for user to search a value in a set', tags=>['category:basic']},
        can_count_values                         => {summary => 'Provide a way for user to get the number of values in a set', tags=>['category:basic']},

        can_union_sets                           => {summary => 'Provide a way for user to perform union operation of two or more sets', tags=>['category:interset-operation']},
        can_intersect_sets                       => {summary => 'Provide a way for user to perform intersection operation of two or more sets', tags=>['category:interset-operation']},
        can_difference_sets                      => {summary => 'Provide a way for user to perform difference operation of two or more sets (values in first set not in the rest)', tags=>['category:interset-operation']},
        can_symmetric_difference_sets            => {summary => 'Provide a way for user to perform symmetric difference operation of two or more sets (values that are only in exactly one set)', tags=>['category:interset-operation']},

        can_compare_sets                         => {summary => 'Provide a way for user to check the equality of two sets', tags=>['category:sets']},

        speed                                    => {summary => 'Subjective speed rating, relative to other set modules', schema=>['str', in=>[qw/slow medium fast/]], tags=>['category:speed']},

        memory_overhead                          => {summary => 'Subjective memory overhead rating, relative to other set modules', schema=>['str', in=>[qw/low medium high/]], tags=>['category:memory_overhead']},

        features                                 => {summary => 'Subjective feature richness/completeness rating, relative to other set modules', schema=>['str', in=>[qw/few medium many/]], tags=>['category:features']},
    },
);

1;
# ABSTRACT:

=head1 SEE ALSO

L<Module::Features>
