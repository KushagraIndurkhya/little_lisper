(setf l1 '(german chococate cake))
(setf l2 '(poppy seed cake))
(setf l3 '((linzer) (torte) ()))
(setf l4 '((bleu cheese) (and) (red) (wine)))
(setf l5 '(() ()))
(setf a1 'coffee)
(setf a2 'seed)
(setf a3 'poppy)

(defun nonlat? (list)
    (cond
        ((null list) t)
        (
            (not (atom (car list))) (nonlat? (cdr list))
        )
        (t nil)
    )
)

(print (nonlat? l1))


(defun member-cake? (list)
  (if (member 'cake list) t nil)
)

(print (member-cake? l1))

