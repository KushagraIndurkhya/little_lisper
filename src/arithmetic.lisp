(print "Arithematic operations")
(terpri)
(print "Enter two numbers to add : ")
(print ((lambda (x y) (+ x y)) (read) (read))) ;addition
(terpri)
(princ "Enter two numbers to subtract : ")
(print ((lambda (x y) (- x y)) (read) (read))) ;subtraction
(terpri)
(princ "Enter two numbers to multiply : ")
(print ((lambda (x y) (* x y)) (read) (read))) ;multiplication
(terpri)
(princ "Enter two numbers to divide : ")
(print ((lambda (x y) (/ x y)) (read) (read))) ;division
(terpri)