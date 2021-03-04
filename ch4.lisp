(setf vec1 `(1 2))
(setf vec2 `(3 2 4))
(setf vec3 `(2 1 3))
(setf vec4 `(6 2 1))
(setf l ())
(setf zero 0)
(setf one 1)
(setf three 3)

(defstruct obj x y)


;4.1
(defun duplicate (n obj)
    (cond	
        ((= zero n) ())
        (t (cons obj (duplicate (- n 1) obj)))
    )
)
(print(setq obj (make-obj :x 10 :y 20)))
(terpri)
(print(duplicate three obj))
(terpri)
(print(duplicate zero obj))
(terpri)
(print(duplicate one vec1))
(terpri)

(defun multvec (vec)
    (cond(
        (null vec) 1)
        (t (* (car vec) (multvec (cdr vec))))
    )
)
(print (multvec vec1))
(terpri)
(print (multvec vec3))
(terpri)
(print (multvec l))




