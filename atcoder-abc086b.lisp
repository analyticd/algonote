(let* ((a (read))
       (b (read))
       (ab (parse-integer (format nil "~A~A" a b)))
       (sab (isqrt ab)))
  (format t (if (= (* sab sab) ab) "Yes" "No")))
