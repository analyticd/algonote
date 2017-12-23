(let* ((n (read))
       (q (read))
       (seq-list (make-array n :initial-element nil))
       (last-answer 0))
  (dotimes (i q)
    (let* ((qv (read))
	   (x (read))
	   (y (read))
	   (idx (mod (logxor x last-answer) n))
	   (seq (aref seq-list idx)))
      (case qv
	(1 (setf (aref seq-list idx) (append seq (list y))))
	(2 (setf last-answer (elt seq (mod y (length seq))))
	   (format t "~A~%" last-answer))))))
