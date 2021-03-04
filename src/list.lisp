;;; list.lisp
;;; Exploring lists
;;; by: Kushagra Indurhya

;;Defining a list for checking
(setf list '(0 1 2 3 4 5 6 7 8 9))

;; Function for calculating the length of list l
(defun len(l)
"Recursively calculates length of a list l."
    (if (null l) ; if list is empty
        0 ; return 0
            (+ 1 (len (cdr l))) ; else add 1 to the length of remaining list after removing the top
))

;; Function find-nth returns the nth element of list l
(defun find-nth (n l)
  "Returns the n'th member of a list l."
  (if (null l) ;if list is empty
    nil ; return nil 
        (if (= n 1) ; if list is not empty and n=1
            (first l); return first element of the list l
                (find-nth (- n 1) (cdr l)); else find the n-1th element of remaining of the list after removing the top
        )
    )
)

(print (len list))
(print (find-nth 6 list))