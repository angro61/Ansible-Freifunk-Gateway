#!/usr/bin/perl

use strict;
use warnings;

$^I = '.bak'; # create a backup copy

while (<>) {
   s/\"site_code\"\:\"inn\"/\"domain_code\"\:\"tdf-inn\",\"site_code\"\:\"tdf-inn\"/g; # do the replacement
   print; # print to the modified file
}
