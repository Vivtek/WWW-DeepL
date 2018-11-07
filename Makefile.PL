use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'WWW::DeepL',
    AUTHOR           => q{Michael Roberts <michael@vivtek.com>},
    VERSION_FROM     => 'lib/WWW/DeepL.pm',
    ABSTRACT_FROM    => 'lib/WWW/DeepL.pm',
    LICENSE          => 'artistic_2',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'WWW::JSONAPI'              => 0.02,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'WWW-DeepL-*' },
);
