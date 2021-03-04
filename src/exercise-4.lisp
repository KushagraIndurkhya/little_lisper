;;; exercise-4.lisp
;;; Implementing some exercise question from chapter-3 of little lisper
;;; by: Kushagra Indurhya

;; setting up variables
(setf vec1 `(1 2))
(setf vec2 `(3 2 4))
(setf vec3 `(2 1 3))
(setf vec4 `(6 2 1))
(setf l ())
(setf zero 0)
(setf one 1)
(setf three 3)

;;defining Struct obj containing x,y
(defstruct obj x y)

;Exercise : 4.1
(defun duplicate (n obj)
"duplicates obj n times"
    (cond	
        ((= zero n) ()) ;if n==0 return ()
        (t (cons obj (duplicate (- n 1) obj))) ; cons where car is obj and cdr is duplicating obj n-1 times
    )
)

(print(setq obj (make-obj :x 10 :y 20))) ; making a variable obj of type obj with values (10,20)
(print(duplicate three obj))
(print(duplicate zero obj))
(print(duplicate one vec1))

;Exercise 4.2
(defun multvec (vec)
"multiplies all elements in vec"
    (cond(
        (null vec) 1) ;if vec is empty return l
        (t (* (car vec) (multvec (cdr vec)))) ; car of vec *   (calling multvec on cdr of vec)
    )
)
(print (multvec vec1))
(print (multvec vec3))
(print (multvec l))