;;; strings.lisp
;;; Playing with strings
;;; by: Kushagra Indurhya

;;setting variables
(setf a "Mini")
(setf b "Assignment-1")
(setf c "Lisp is cool")


(print (length c)) ; calculates length of string c
(print (subseq c 5 7)) ; prints subsequence of string c from indices 5 7
(print (concatenate 'string a b)) ; concatenating strings a and b
(print (sort (vector a b c) 'string<)); creating a vector of strings a,b & c and 
                                        ;sorting it using string comparator <
(print (reverse c)); printing the reversed the alphabets of the string c