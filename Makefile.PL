use inc::Module::Install;

name          ( 'File-Find-Rule-PPI'            );
abstract      ( 'rules to match on PPI queries' );
author        ( 'Adam Kennedy <cpan@ali.as>'  );
version_from  ( 'lib/File/Find/Rule/PPI.pm'     );
license       ( 'perl'                          );

requires      ( 'perl'               => '5.005' );
requires      ( 'PPI'                => '0.990' );
requires      ( 'File::Find::Rule'   => '0.20'  );

build_requires( 'File::Spec'         => '0.82'  );
build_requires( 'Test::More'         => '0.47'  );

# Prevent .pm files in the t.data directory from being indexed
no_index      ( directory           => 't.data' );

auto_install();

&WriteAll;
