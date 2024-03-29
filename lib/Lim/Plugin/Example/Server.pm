package Lim::Plugin::Example::Server;

use common::sense;

use Scalar::Util qw(weaken);

use Lim::Plugin::Example ();

use Lim::Util ();

use base qw(Lim::Component::Server);

=encoding utf8

=head1 NAME

Lim::Plugin::Example::Server - Server class for the example Lim plugin

=head1 VERSION

See L<Lim::Plugin::Example> for version.

=cut

our $VERSION = $Lim::Plugin::Example::VERSION;

=head1 SYNOPSIS

  use Lim::Plugin::Example;

  # Create a Server object
  $server = Lim::Plugin::Example->Server;

=head1 METHODS

These methods are called from the Lim framework and should not be used else
where.

Please see L<Lim::Plugin::Example> for full documentation of calls.

=over 4

=item $server->ReadExample(...)

An example read call.

=cut

sub ReadExample {
    my ($self, $cb) = @_;
    
    $self->Successful($cb, {
        example => {
            text => 'Example text sent from the server',
            bool => 1
        }
    });
}

=back

=head1 AUTHOR

Your Name, C<< <your.name@some.email.com> >>

=head1 BUGS

Please report any bugs or feature requests to L<http://your.bugtracker.com/lim-plugin-example>.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Lim::Plugin::Example

You can also look for information at:

=over 4

=item * Lim issue tracker (report bugs here)

L<http://your.bugtracker.com/lim-plugin-example>

=back

=head1 ACKNOWLEDGEMENTS

=head1 LICENSE AND COPYRIGHT

Copyright YEAR Your Name.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of Lim::Plugin::Example::Server
