/*
*  Echo Program
*  by Stuart C. Shapiro
*
*  To demonstrate the writing and running of a C++ program.
*
*  Store this program in a file named echo.cpp
*
*  To run this program:
*    1. Type g++ -Wall -o echo echo.cpp
*    2. Type ./echo
*
*    Repeats the following:
*      print a numbered prompt;
*      read something;
*      echo 'I read --><whatever was read><--'
*    until the thing read is the symbol bye.
*/

#include <iostream>
#include <string>

using namespace std;

// int strcmp(const char* s1, const char* s2);

int main()
{

  int n;
  std::string str;

  cout << "\nC++ Echo\nType something to each prompt. \nType bye to quit.\n";

  for (n = 1; ; n++) {
    cout << n <<": ";
    cin >> str;
   // if (strcmp(str, "bye")==0) {
    if (str.compare("bye") == 0) {
      cout << "Good bye.\n";
      return 0;
    }
    else 
      cout << "I read -->" << str << "<--\n";
  }
}

