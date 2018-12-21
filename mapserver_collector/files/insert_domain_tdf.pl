#!/usr/bin/perl

use strict;
use warnings;

$^I = '.bak'; # create a backup copy

while (<>) {
   s/\"site_code\"\:\"tdf\"/\"domain_code\"\:\"tdf-tdf\",\"site_code\"\:\"tdf-tdf\"/g; # do the replacement
   print; # print to the modified file
}
