#! /usr/bin/python

#  Echo Program
#  by Stuart C. Shapiro
#
#  To demonstrate the writing and running of a Python program.
#
#  Store this program in a file named echo.py
#
#  To run this program:
#    1. Type chmod 700 echo.py
#            to make echo.py executable
#    2. Type ./echo.py
#  Or you needn't include the "shebang" line at the top
#     and you needn't make echo.py executable
#     Just type python echo.py
#
#    Repeats the following:
#      print a numbered prompt;
#      read something;
#      echo 'I read --><whatever was read><--'
#    until the thing read is the symbol bye.

def echo():
    print "Python Echo\nType something to each prompt.\nType `bye' to quit.\n\n";
    n = 1
    while True:
        input = raw_input(str(n) + ":  ")
        if input == "bye": break
        print "I read -->" + input + "<--\n"
        n += 1
    print "Good bye.\n"

echo()

