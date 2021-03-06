package YAML_loader;
use YAML::XS 'LoadFile';
use Data::Dumper;


use 5.010;
use strict;
use warnings;

our $VERSION = '0.01';



sub new {
	my($class, $yaml_file) = @_;
	my $yaml = LoadFile($yaml_file) or die "Error";
	print Dumper($yaml);
	return bless {titulos =>$yaml},$class;
}


sub get_category {
	my ($self, $word) = @_;
	my $titles = $self->{titles};
	foreach my $title ($titles){
		print Dumper($title);
	}}




1;

