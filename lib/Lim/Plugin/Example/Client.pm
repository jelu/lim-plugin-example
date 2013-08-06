package Lim::Plugin::Example::Client;

use common::sense;

use Lim::Plugin::Example ();

use base qw(Lim::Component::Client);

=encoding utf8

=head1 NAME

Lim::Plugin::Example::Client - Client class for the example Lim plugin

=head1 VERSION

See L<Lim::Plugin::Example> for version.

=cut

our $VERSION = $Lim::Plugin::Example::VERSION;

=head1 SYNOPSIS

  use Lim::Plugin::Example;

  # Create a Client object
  $client = Lim::Plugin::Example->Client;

=head1 METHODS

All methods are auto generated from the call definitions.

See L<Lim::Plugin::Example> for list of calls and arguments.

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

1; # End of Lim::Plugin::Example::Client
