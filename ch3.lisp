
(setf l1 `(("paella" "spanish") ("wine" "red") ("and" "beans")))
(setf l2 ())
(setf l3 `("cincinati" "chili"))
(setf l4 `("texas" "hot" "chili"))
(setf l5 `("soy" "sauce" "and" "tomato" "sauce"))
(setf l6 `(("spanish") () ("paella")))
(setf l7 `(("and" "hot") ("but" "dogs")))
(setf a1  "chili")
(setf a2  "hot")
(setf a3  "spicy")
(setf a4  "sauce")
(setf a5  "soy")


(defun seconds (l)
    (cond
      ((null l) (quote ()))
      (t (cons
           (car (cdr (car l)))
           (seconds (cdr l))))))

(defun dupla (a l)
    (cond
      ((null l) ())
      (t (cons a (dupla a (cdr l))))))

(defun double (a l)
    (cond
      ((null l) (quote ()))
      ((eq a (car l)) (cons a l))
      (t (cons (car l) (double a (cdr l))))))


(print (dupla a2 l4))

