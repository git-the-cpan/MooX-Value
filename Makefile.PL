use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'MooX::Value',
    AUTHOR              => 'G. Wade Johnson <gwadej@cpan.org>',
    VERSION_FROM        => 'lib/MooX/Value.pm',
    ABSTRACT_FROM       => 'lib/MooX/Value.pm',
    LICENSE             => 'perl',
    PL_FILES            => {},
#   EXE_FILES           => [ 'bin/prog' ],
    PREREQ_PM => {
        'Test::More'       => 0,
        'Test::Exception'  => 0,
        'Moo'              => 0,
        'namespace::clean' => 0,
    },
    MIN_PERL_VERSION    => 5.008,
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'MooX-Value-*' },
    META_MERGE          => {
       'meta-spec' => { version => 2 },
       x_deprecated => 1,
       resources => {
           repository => {
               type => 'git',
               url  => 'https://github.com/gwadej/MooX-Value.git',
               web  => 'https://github.com/gwadej/MooX-Value',
            },
       },
    },
    test               => {
        TESTS => 't/*.t xt/*.t',
    },
);
