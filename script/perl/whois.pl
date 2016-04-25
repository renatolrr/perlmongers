#!/usr/bin/env perl

#use Modern::Perl;
#use autodie;

#use LWP::Simple;
#use Mojo::DOM;
#use JSON;

use Net::Domain::Info qw(::Whois); # used Whois plugin
 
Net::Domain::Info->new ($domain);
 
$domain_info->fetch_whois;
 
$domain_info->created;
$domain_info->expires;
 
$domain_info->contacts;




#my $url = "http://www.granada.org/contrata.nsf/lichis!OpenView&Start=1&Count=30&Expand=2#2";

#my $dom = Mojo::DOM->new( get $url );
