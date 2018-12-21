#!/usr/bin/perl

use strict;
use warnings;

$^I = '.bak'; # create a backup copy

while (<>) {
   s/\"site_code\"\:\"tdf\"/\"domain\"\:\"tdf-tdf\",\"site_code\"\:\"tdf\"/g; # do the replacement
   print; # print to the modified file
}