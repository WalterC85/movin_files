#!/usr/bin/perl

##### Perl SCRIPT to locate .ab1 files on your computer and copy it in a specific folder
## From an idea of Angelica Crottini, developped by Walter Cocca with the advaices of Antonio Munhoz Merida

## Reading INPUT file 

use Array::Utils qw(:all);

if ((!$ARGV[0]) && (!$ARGV[1])) {
  print "insert input name:\n";
   $file=<STDIN>;
    chomp $file;
  
  print "insert path:\n";
   $path=<STDIN>;
    chomp $path;
} else {              
  $file=$ARGV[0];
  $path=$ARGV[1];
}
print "Reading file $file\n";
my $extract = `mdfind "kMDItemDisplayName == *.ab1" >> find_temp.txt`;  ###here i am searching for all files .ab1 in computer
open (temp,'find_temp.txt');
my @ab1_list;
open (input,$file);
open (output, ">extracts_missing.txt");
#open (output2, ">extracts_found.txt");
#open (output3, ">extracts_def_not_found.txt");
while (<temp>){
  chomp;
  push @ab1_list, $_;
}
print "$#ab1_list\n";
my @ab1_found;
my @ab1_not_found;
while (<input>){ ##here I am reading the temp file with the list of all the path of all .ab1 files on the computer
  chomp;
  foreach $i(@ab1_list){
    if ($i =~ /$_/){
      my $copy = `cp $i $path`;
#      print output2 "$_ found\n";
      push @ab1_found, $_; 
    }else{
#      print output "$_ not found\n";
      push @ab1_not_found, $_;
    }
  }
}
my @minus = array_minus( @ab1_not_found, @ab1_found);
my @minus_unique =   unique(@minus);
foreach $d(@minus_unique){
  print output "$d\n";
}
close temp;
close output;
close input;
my $remove = `rm find_temp.txt`;
print "The script run correctly. Please check the extracts_missing.txt file to see if some code wasn't found by this script\n";


#SCRIPT TO RUN IN COMMAND LINE

# perl -w copy_ab1_2.4.pl List_extract.txt  /Users/walter/OneDrive/PhD/17-scripts/01-moving_files/test_moving/ &> screen_ab1_test.txt

# perl copy_ab1_2.4.pl List_extract.txt  /Users/walter/OneDrive/PhD/17-scripts/01-moving_files/test_moving/




