(let ((n (read))
      (result 1))
  (dotimes (i n)
    (setf result (lcm result (read))))
  (format t "~a~%" result))