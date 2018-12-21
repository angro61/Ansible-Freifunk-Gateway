#!/usr/bin/perl

use strict;
use warnings;

$^I = '.bak'; # create a backup copy

while (<>) {
   s/\"site_code\"\:\"flu\"/\"domain\"\:\"tdf-flu\",\"site_code\"\:\"flu\"/g; # do the replacement
   print; # print to the modified file
}
