(setf a 10)
(setf b 10.0001)
(setf c `(1 2))
(setf d "Kushagra")

(defun give_type_of (x)
    "returns type of x"
    (type-of x))

(print (give_type_of a))
(print (give_type_of b))
(print (give_type_of c))
(print (give_type_of d))
