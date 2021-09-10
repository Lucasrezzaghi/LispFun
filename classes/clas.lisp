(defclass box ()
  ((length :accessor box-length)
   (breadth :accessor box-breadth)
   (height :accessor box-height)
   )
  )
;method calculating volume

(defmethod volume ((object box))
  (* (box-length object) (box-breadth object) (box-height object))
  )

;wooden-box class inherits the box class
(defclass wooden-box (box)
  ((price :accessor box-price))
  )

(setf item (make-instance 'wooden-box))
(setf (box-length item) 10)
(setf (box-breadth item) 10)
(setf (box-height item) 5)
(setf (box-price item) 1000)
(format t "Length of the Box is ~d~%" (box-length item))
(format t "Breadth of the Box is ~d~%" (box-breadth item))
(format t "Height of the Box is ~d~%" (box-height item))
(format t "Volume of the Box is ~d~%" (volume item))
(format t "Price of the Wooden Box is ~d~%" (box-price item))
