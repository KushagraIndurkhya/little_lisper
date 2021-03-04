;;; fibonacci.lisp
;;; Calculating the nth fibonacci number
;;; by: Kushagra Indurhya

;;fibonacci(n) takes n as argument and returns nth fibonacci number

(defun fibonacci(n)
    "Recursive function to calculate nth number of fibonacci series"
    (cond
        ((= n 1) 0) ;if n==1 return 0
        ((= n 2) 1) ;if n==2 return 1
        (t ( + (fibonacci (- n 1)) (fibonacci (- n 2)) ) ) ; else call recurse on n-1 and n-2  
    )
)

(print(fibonacci (read))) ; calling fibonacci() on user input