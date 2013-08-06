#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Lim::Plugin::Example' ) || print "Bail out!\n";
}

diag( "Testing Lim::Plugin::Example $Lim::Plugin::Example::VERSION, Perl $], $^X" );
