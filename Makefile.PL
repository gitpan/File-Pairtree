use 5.000000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile(
    EXE_FILES         => [ 'pt' ],
    NAME              => 'File::Pairtree',
    VERSION_FROM      => 'VERSION',    # finds $VERSION
    PM		=> {
		'lib/File/Pairtree.pm'	=> 'blib/lib/File/Pairtree.pm'
		},
    PREREQ_PM         => {
	'Pod::Usage'	=> '0',
	'Getopt::Long'	=> '0',
	'Carp'		=> '0',
	'File::Find'	=> '0',
	'File::Path'	=> '0',
	'File::Value'	=> '0',
	'File::ANVL'	=> '0',
	'File::Glob'	=> '0',
	'File::Namaste'	=> '0',
    },
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/File/Pairtree.pm', # get abstract from moduleXXX
       AUTHOR         => 'John Kunze <jak@ucop.edu>') : ()),
);
