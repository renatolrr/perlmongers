#!/usr/bin/env perl

use Net::Whois; 
use Carp;

 my $w = new Net::Whois::Domain $dom
 or die "Can't connect to Whois server\n;

 unless ($w->ok) { croak "No match for $dom";}

 print "Domain: ", $w->domain, "\n";
 print "Name: ", $w->name, "\n";
 print "Tag: ", $w->tag, "\n";
 print "Address:\n", map { "    $_\n" } $w->address;
 print "Country: ", $w->country, "\n";
 print "Name Servers:\n", map { "    $$_[0] ($$_[1])\n" }
 @{$w->servers};
 my ($c, $t);
 if ($c = $w->contacts) {
   print "Contacts:\n";
   for $t (sort keys %$c) {
     print "    $t:\n";
     print map { "\t$_\n" } @{$$c{$t}};
   }
 }
 print "Record created:", $w->record_created ;
 print "Record updated:", $w->record_updated ;
