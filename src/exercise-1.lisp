;;; exercise-1.lisp
;;; Implementing some exercise question from chapter-1 of little lisper
;;; by: Kushagra Indurhya
;;setting variables
(setf a 'all)
(setf b 'these)
(setf c 'problems)
(setf d ())
;; Exercise 1.3
(print (cons a(cons b (cons c d)))) ;prints (ALL THESE PROBLEMS)
(print(cons a (cons (cons b d) (cons c d))));prints (ALL (THESE) PROBLEMS)
(print(cons (cons a (cons b d)) (cons c d)));prints ((ALL THESE) PROBLEMS)
(print (cons (cons a(cons b (cons c d))) d));prints ((ALL THESE PROBLEMS))