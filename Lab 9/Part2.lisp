;;; Marc Gatti

;;; Gets the head of multiple lists
(defun headList (ns)
	(if ns (mapcar 'first ns)
	()))

;;; Gets the last element of a list
(defun lastElement (ns)
	(if  ns (last ns)
	()))

;;; Gets a list of every element in a list excluding the last element
(defun allButLast (ns)
	(if (rest ns) (cons (first ns)(allButLast (rest ns)))
	()))

;;; Gets a list of all the tails of a list
(defun tailList (ns)
        (if ns (mapcar 'last ns)
        ()))

;;; Removes the first pair of adjacent matching symbols
(defun removeAPair (ns)
	(if (eq (first ns)(second ns))
		(rest (rest ns))
		(cons (first ns)(removeAPair (rest ns)))))

;;; Puts the last element of a list first
(defun rotate (ns)
	(cons (last ns)(allButLast ns)))

;;; Rotates a list a specific number of times
(defun spin (ns number)
	(do ((i number (- i 1)))
	((= i 0) ns)
	(setf ns (rotate ns))))

(print (headList '((a b) (c d e) (f g) (h) (i j k))))
(print (headList '((x b) (b d e) (a g) (h) (l j k))))

(print (lastElement '(a b c d)))
(print (lastElement '(x u c e)))

(print (allButLast '(a b c d)))
(print (allButLast '(x u c e)))

(print (tailList '((a b) (c d e) (f g) (h) (i j k))))
(print (tailList '((x b) (b d f) (a b) (a) (l j p))))

(print (removeAPair '(a b c c d d b e a)))
(print (removeAPair '(a b c d d f b a a)))

(print (rotate '(a (c d) e)))
(print (rotate '(k (c b) a)))

(print (spin '(a (c d) e) 2))
(print (spin '(k (c b) a) 3))