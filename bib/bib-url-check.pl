#!/usr/bin/perl
#
# Check a .bib file for unretrievable URLs.
#
# Usage:
#   bib-url-check.pl sampa-pubs.bib
#  -or-
#   < sampa-pubs.bib bib-url-check.pl > urlreport.txt
#


use strict;
use LWP::UserAgent;

# http://daringfireball.net/2010/07/improved_regex_for_matching_urls
my $urlrx = qr{(?i)\b((?:https?://|www\d{0,3}[.]|[a-z0-9.\-]+[.][a-z]{2,4}/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]{};:'".,<>?«»“”‘’]))}o;

my $ua = LWP::UserAgent->new(
        ssl_opts => { verify_hostname => 0 },
        );
$ua->timeout(10);
$ua->env_proxy;
my $response;

my %done = {};

while (<>) {
    if (m/$urlrx/g) {
        next if $done{$1};

        $response = $ua->get($1);
        if ($response->is_success) {
            print "OK (", $response->code, "): line $.: $1\n";
        } else {
            print "FAIL (", $response->code, "): line $.: $1\n";
        }
        $done{$1} = 1;
        sleep 1;
    }
}
