;;; exercise-3.lisp
;;; Implementing some exercise question from chapter-3 of little lisper
;;; by: Kushagra Indurhya

;;Setting variables
(setf l1 `(('paella 'spanish) ('wine 'red) ('and 'beans)))
(setf l2 ())
(setf l3 `('cincinati 'chili))
(setf l4 `('texas 'hot 'chili))
(setf l5 `('soy 'sauce 'and 'tomato 'sauce))
(setf l6 `(('spanish) () ('paella)))
(setf l7 `(('and 'hot) ('but 'dogs)))
(setf a1  'chili)
(setf a2  'hot)
(setf a3  'spicy)
(setf a4  'sauce)
(setf a5  'soy)

;; Exercise 3.1
(defun seconds (l)
"Takes a lis of lats and makes a new lat consisting of the second atom from each lat in the list"
    (cond
      ((null l) ()) ;if list is empty return null
      (t (cons
          (car (cdr (car l))) ;making cons of second element of l and seconds of cdr of l
          (seconds (cdr l))
          )
      )
    )
  )
(print(seconds l1))
(print(seconds l2))
(print(seconds l7))
;; Exercise 3.2
(defun dupla (a l)
  "creates a new lat containing as many a's as there are elements in l"
    (cond
      ((null l) ()) ;if list is empty return null
      (t 
        (cons a (dupla a (cdr l))) ;making cons of a and (dupla of cdr of 1)
      )
    )
)
(print (dupla a2 l4))
(print (dupla a2 l2))
(print (dupla a1 l5))