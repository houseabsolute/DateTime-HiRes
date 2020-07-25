package DateTime::HiRes;

use strict;
use warnings;

our $VERSION = '0.01';

use DateTime;
use Time::HiRes;

sub now { shift; DateTime->from_epoch( epoch => Time::HiRes::time, @_ ) }

1;

# ABSTRACT: Create DateTime objects with sub-second current time resolution

__END__

=pod

=head1 SYNOPSIS

    use DateTime::HiRes;

    my $dt = DateTime::HiRes->now;

=head1 DESCRIPTION

This module enables you to generate DateTime objects that represent the current
time with sub-second resolution.

=head1 METHODS

This class provides the following methods:

=head2 DateTime::HiRes->now( ... )

Similar to C<DateTime-E<gt>now> but uses C<Time::HiRes::time()> instead of
Perl's C<CORE::time()> to determine the current time. The returned object will
have fractional second information stored as nanoseconds. The sub-second
precision of C<Time::HiRes> is highly system dependent and will vary from one
platform to the next.

Just like C<DateTime-E<gt>now> it accepts "time_zone" and "locale" parameters.

=head1 CREDITS

Everyone at the DateTime C<Asylum>.

=head1 SEE ALSO

L<DateTime>, L<Time::HiRes>

=cut
