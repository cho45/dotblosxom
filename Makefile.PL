use inc::Module::Install;
name 'DotBlosxom';
version 0.01;

requires 'Plack';
requires 'Path::Class';

test_requires 'Encode';

WriteAll;
