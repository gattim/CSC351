;;;
;;; Echo Program
;;; by Stuart C. Shapiro
;;; edited by Debra T. Burhans for clisp 
;;;
;;; To demonstrate the writing and running of a Common Lisp program.
;;;
;;; Store this program in a file named echo.cl
;;;
;;; To run this program:
;;;    1. Type clisp -c echo.cl
;;;    2. Type clisp echo.fas

(in-package :common-lisp-user)

(defun echo ()
  "Repeats the following:
     print a numbered prompt;
     read something;
     echo `I read --><whatever was read><--'
   until the thing read is the symbol bye."
  (loop
      initially (format t "~&~%Common Lisp Echo~%Type something to each prompt.~%Type `bye' to quit.~%1:  ")
      for input = (read-line)
      until (string= input "bye")
      for n from 2
      do (format t "I read -->~A<--~%~A:  " input n)
      finally (format t "Good bye.~%~%")))

(echo)
(exit)

