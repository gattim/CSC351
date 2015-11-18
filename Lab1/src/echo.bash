#! /bin/bash
#  Echo Program
#  by Stuart C. Shapiro
#
#  To demonstrate the writing and running of a bash shell script.
#
#  Store this script in a file named echo.bash
#
#  To run this program:
#    1. Type chmod 700 echo.bash
#            to make echo.bash executable
#    2. Type ./echo.bash
#
#    Repeats the following:
#      print a numbered prompt;
#      read something;
#      echo 'I read --><whatever was read><--'
#    until the thing read is the symbol bye.

printf "\nBash Echo\nType something to each prompt. \nType bye to quit.\n\n"
n=1
while ((1))
 do { read -p "$n:  " input
     if [ "$input" = "bye" ]
     then
	printf "Good bye.\n"
	exit
    else
	printf "I read -->$input<--\n"
    fi
    let n=n+1; }
done

