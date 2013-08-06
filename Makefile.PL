use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Lim::Plugin::Example',
    AUTHOR              => q{Your Name <your.name@some.email.com>},
    VERSION_FROM        => 'lib/Lim/Plugin/Example.pm',
    ABSTRACT_FROM       => 'lib/Lim/Plugin/Example.pm',
    (! eval { ExtUtils::MakeMaker->VERSION(6.3002) } ? () :
        (LICENSE => 'perl')
    ),
    (eval { ExtUtils::MakeMaker->VERSION(6.5503) } ?
    (
        BUILD_REQUIRES => {
            'Test::More' => 0,
            'common::sense' => 3,
            'Lim' => 0.16,
            'Getopt::Long' => 2.38,
            'Scalar::Util' => 1
        },
        PREREQ_PM => {
            'common::sense' => 3,
            'Lim' => 0.16,
            'Getopt::Long' => 2.38,
            'Scalar::Util' => 1
        }
    ) : (
        PREREQ_PM => {
            'Test::More' => 0,
            'common::sense' => 3,
            'Lim' => 0.16,
            'Getopt::Long' => 2.38,
            'Scalar::Util' => 1
        }
    )),
    (! eval { ExtUtils::MakeMaker->VERSION(6.46) } ? () :
        (META_ADD => {
            resources => {
                homepage   => 'http://your.homepage.com',
                repository => 'http://your.repository.com/lim-plugin-example',
                bugtracker => 'http://your.bugtracker.com/lim-plugin-example',
            },
        })
    ),
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Lim-Plugin-Example-*' },
);
