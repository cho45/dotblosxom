#!plackup
use strict;
use warnings;
use Plack::App::CGIBin;
use Plack::Builder;
use Path::Class;

my $root = file(__FILE__)->parent->absolute;

my $app = Plack::App::WrapCGI->new(script => $root->file("blosxom.cgi"))->to_app;

builder {
	enable "Plack::Middleware::Static",
		path => qr{^/(images/|js/|css/|favicon\.ico)},
		root => $root->subdir('static');

	$app;
};
