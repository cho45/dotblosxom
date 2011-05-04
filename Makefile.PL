use inc::Module::Install;
name 'DotBlosxom';
version 0.01;

requires 'Plack';
requires 'Path::Class';
requires 'CGI::Emulate::PSGI';
requires 'CGI::Compile';

test_requires 'Encode';

WriteAll;
