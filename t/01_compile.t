#!/usr/bin/perl -w

# Load testing for File::Find::Rule::PPI

use strict;
use lib ();
use UNIVERSAL 'isa';
use File::Spec::Functions ':ALL';
BEGIN {
	$| = 1;
	unless ( $ENV{HARNESS_ACTIVE} ) {
		require FindBin;
		$FindBin::Bin = $FindBin::Bin; # Avoid a warning
		chdir catdir( $FindBin::Bin, updir() );
		lib->import('blib', 'lib');
	}
}

use Test::More tests => 2;




# Check their perl version
ok( $] >= 5.005, "Your perl is new enough" );

# Load the modules
use_ok( 'File::Find::Rule::PPI' );

exit(0);