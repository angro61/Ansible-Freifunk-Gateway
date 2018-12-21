#!/usr/bin/perl

use strict;
use warnings;

$^I = '.bak'; # create a backup copy

while (<>) {
   s/\"site_code\"\:\"inn\"/\"domain\"\:\"tdf\",\"site_code\"\:\"inn\"/g; # do the replacement
   print; # print to the modified file
}
