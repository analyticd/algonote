
(defvar +maxiter+ 52)

(let* ((a (read))
       (b (read))
       (c (read))
       (d (read))
       (e (read))
       (f (read))
       (rate -1)
       (max-sugar -1)
       (max-water -1))
  (dotimes (ai +maxiter+)
    (dotimes (bi +maxiter+)
      (dotimes (ci +maxiter+)
        (dotimes (di +maxiter+)
          (let ((water (+ (* a ai 100) (* b bi 100)))
                (sugar (+ (* c ci) (* d di))))
            (when (<= (* sugar 100) (* e water))
              (let ((sw (+ sugar water)))
                (when (and (< 0 sw)
                           (<= sw f))
                  (let ((current (/ (* 100 sugar) sw)))
                    (when (< rate current)
                      (setf rate current
                            max-sugar sugar
                            max-water water)))))))))))
  (format t "~A ~A~%"
          (+ max-sugar max-water)
          max-sugar))
