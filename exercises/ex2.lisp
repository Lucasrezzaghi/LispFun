(defun askem (string)
  (format t "~A" string)
  (read))

(defparameter *xx* 99)

(let ((n 10))
  (setf n 2)
  n)

(setf lista '(a b o b r a))

(setf lista (remove 'b lista))

(defun show-squares (start end)
  (do ((i start (+ i 1)))
      ((> i end) 'done)
    (format t " ~A ~A~%" i (* i i))))

(defun presentp (x y)
  (cond
    ((null y) nil)
    ((equal x (car y)) t)
    ((presentp x (cdr y)))))

(defparameter *formula* '(sqrt (/ (+ (expt x 2) (expt y 3)) 2.0)))
