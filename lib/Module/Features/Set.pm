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
    description => <<'_',

To check whether two sets are equal, you can use intersection
(`can_intersect_sets`). Two sets are equal if their intersection has the same
size as either set.

To check whether a set is a subset of another, you can use difference
(`can_difference_sets`). A set is a subset of another if the other set's
difference with the set has the same size as the first set.

To check whether set A is a superset of set B, check whether set B is a subset
of set A.

_
    features => {
        can_insert_value                         => {summary => 'Provide a way for user to insert a value to a set', tags=>['category:intraset-operation']},
        can_delete_value                         => {summary => 'Provide a way for user to delete a value from a set', tags=>['category:intraset-operation']},
        can_search_value                         => {summary => 'Provide a way for user to search a value in a set', tags=>['category:intraset-operation']},
        can_count_values                         => {summary => 'Provide a way for user to get the number of values in a set (the size of the set)', tags=>['category:intraset-operation']},

        can_union_sets                           => {summary => 'Provide a way for user to perform union operation of two or more sets', tags=>['category:interset-operation']},
        can_intersect_sets                       => {summary => 'Provide a way for user to perform intersection operation of two or more sets', tags=>['category:interset-operation']},
        can_difference_sets                      => {summary => 'Provide a way for user to perform difference operation of two or more sets (values in first set not in the rest)', tags=>['category:interset-operation']},
        can_symmetric_difference_sets            => {summary => 'Provide a way for user to perform symmetric difference operation of two or more sets (values that are only in exactly one set)', tags=>['category:interset-operation']},

        speed                                    => {summary => 'Subjective speed rating, relative to other set modules', schema=>['str', in=>[qw/slow medium fast/]], tags=>['category:speed']},

        memory_overhead                          => {summary => 'Subjective memory overhead rating, relative to other set modules', schema=>['str', in=>[qw/low medium high/]], tags=>['category:memory_overhead']},
    },
);

1;
# ABSTRACT: Features of modules that generate text tables

=head1 SEE ALSO

L<Module::Features>
