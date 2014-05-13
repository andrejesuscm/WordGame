#!/usr/bin/perl

use strict;
use encoding "utf8";

local $/;

open(WORDLIST, "pt.dic");

my @lines = split("\n",<WORDLIST>);

open(CLEANWORDLIST, ">>clean_pt.dic");
foreach my $line(@lines){
	my @string = split("/",$line);
	print CLEANWORDLIST $string[0],"\n";
	
}

close(CLEANWORDLIST);
close (WORDLIST);
