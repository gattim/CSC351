;;; Marc Gatti

;;; Averages three numbers.
(defun avg3 (n1 n2 n3) 
	(/ (+ n1 n2 n3) 3))

;;; Adds up a list
(defun sumList (ns)
	(if ns (+(first ns)(sumList(rest ns)))
	0))

;;; Averages an entire list
(defun averageList (ns)
	(if ns (/ (sumList ns)(length ns))
	0))

;;; Reverse the tail
(defun reverseTail (ns)
	(if ns (append (list (first ns))(reverseTail2 (rest ns)))
	()))

(defun reverseTail2 (ns)
	(if ns (append (reverseTail2 (rest ns))(list (first ns)))
	()))

;;; Inserts a number into a list in order
(defun insert (int ns)
	(if ns	
		(if (< int (first ns))
			(cons int ns)
			(cons (first ns)(insert int (rest ns))))
	(list int)))

;;; Recursively inserts number into an ordered list
(defun insertSort (ns)
	(if ns (insert (first ns)(insertSort (rest ns)))
	()))

(print (avg3 8 6 10))
(print (avg3 2 4 6))

(print (sumList (list 1 2 3 4)))
(print (sumList (list 5 2 8 4 20)))

(print (averageList (list 1 2 3 4 5)))
(print (averageList (list 5 2 8 4 20)))

(print (reverseTail (list 1 2 3 4 5)))
(print (reverseTail (list 5 2 8 4 20)))

(print (insert 3 (list 5 2 8 4 20)))
(print (insert 6 (list 1 2 3 4 5)))
(print (insert 6 (list 5 2 8 4 20)))

(print (insertSort (list 5 2 8 4 20)))
(print (insertSort (list 1 2 3 4 5)))
(print (insertSort (list 5 2 8 4 20)))