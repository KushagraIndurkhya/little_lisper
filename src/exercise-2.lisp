;;; exercise-2.lisp
;;; Implementing some exercise question from chapter-2 of little lisper
;;; by: Kushagra Indurhya


;;setting values
(setf l1 '(german chococate cake))
(setf l2 '(poppy seed cake))
(setf l3 '((linzer) (torte) ()))
(setf l4 '((bleu cheese) (and) (red) (wine)))
(setf l5 '(() ()))
(setf a1 'coffee)
(setf a2 'seed)
(setf a3 'poppy)

;;Exercise 2.5
(defun nonlat? (list)
"Determines whether a list of S-expressions does not contain atomic S-expression"
    (cond
        ((null list) t) ;if list is empty return true:
        (
            (not (atom (car list))) (nonlat? (cdr list)) ;car of list is not an atom check for cdr
        )
        (t nil)
    )
)

(print (nonlat? l1))
(print (nonlat? ()))
(print (nonlat? l3))
(print (nonlat? l4))

;;Exercise 2.6
(defun member-cake? (list)
"Determines where a lat contains the atom \'cake "
  (if (member 'cake list) t nil) ;check if 'cake is member of list
)

(print (member-cake? l1))
(print (member-cake? l2))
(print (member-cake? l5))