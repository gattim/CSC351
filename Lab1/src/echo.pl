#! /usr/bin/perl

#  Echo Program
#  by Stuart C. Shapiro
#  edited by Debra T. Burhans for perl on ptolemy@canisius
#
#  To demonstrate the writing and running of a Perl program.
#
#  Store this program in a file named echo.pl
#
#  To run this program:
#    1. Type chmod 700 echo.pl
#            to make echo.pl executable
#    2. Type ./echo.pl
#
#    Repeats the following:
#      print a numbered prompt;
#      read something;
#      echo 'I read --><whatever was read><--'
#    until the thing read is the symbol bye.

print "Perl Echo\nType something to each prompt.\nType `bye' to quit.\n\n";

for ($n=1; ; $n++) {
  print "$n: ";
  $input = <STDIN>;
  chomp($input);
  if ($input eq "bye") {
    print "Good bye.\n";
    last;}
  print "I read -->$input<--\n";
}

