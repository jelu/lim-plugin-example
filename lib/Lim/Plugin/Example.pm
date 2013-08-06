package Lim::Plugin::Example;

use common::sense;

use base qw(Lim::Component);

=encoding utf8

=head1 NAME

Lim::Plugin::Example - Example plugin for Lim

=head1 VERSION

Version 0.10

=cut

our $VERSION = '0.10';

=head1 SYNOPSIS

  use Lim::Plugin::Example;

  # Create a Server object
  $server = Lim::Plugin::Example->Server;

  # Create a Client object
  $client = Lim::Plugin::Example->Client;

  # Create a CLI object
  $cli = Lim::Plugin::Example->CLI;

=head1 DESCRIPTION

This is an example plugin for Lim which can be used as base for developing
other plugins.

=head1 METHODS

=over 4

=item $plugin_name = Lim::Plugin::Example->Name

Returns the plugin's name.

=cut

sub Name {
    'Example';
}

=item $plugin_description = Lim::Plugin::Example->Description

Returns the plugin's description.

=cut

sub Description {
    'This is an example plugin for Lim which can be used as base for developing other plugins.';
}

=item $call_hash_ref = Lim::Plugin::Example->Calls

Returns a hash reference to the calls that can be made to this plugin, used both
in Server and Client to verify input and output arguments.

See CALLS for list of calls and arguments.

=cut

sub Calls {
    {
        ReadExample => {
            out => {
                example => {
                    text => 'string',
                    bool => 'bool'
                }
            }
        }
    };
}

=item $command_hash_ref = Lim::Plugin::Example->Commands

Returns a hash reference to the CLI commands that can be made by this plugin.

See COMMANDS for list of commands and arguments.

=cut

sub Commands {
    {
        example => [ 'Get response from the example read call' ],
    };
}

=back

=head1 CALLS

See L<Lim::Component::Client> on how calls and callback functions should be
used.

=over 4

=item $client->ReadExample(sub { my ($call, $response) = @_; })

An example read call.

  $response = {
    example => # (optional) Single hash or an array of hashes as below:
    {
      text => 'string',     # A text string
      bool => 'bool',       # A boolean
    }
  };

=back

=head1 COMMANDS

=over 4

=item example

Get response from the example read call.

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

1; # End of Lim::Plugin::Example
