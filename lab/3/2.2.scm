(define (make-point x y)
    (cons x y))

(define (make-segment a b)
    (cons a b))

(define (start-segment pln)
(car pln))
(define (end-segment pln)
(cdr pln))

(define (x-point pnt)
(car pnt))

(define (y-point pnt)
(cdr pnt))

; compute the average between two x coords
;compute the average between two y coords
(define (midpoint-segment pln)
(print-point (make-point (/ (- (x-point (start-segment pln)) (x-point (end-segment pln))) 2) (/ (- (y-point (start-segment pln)) (y-point (end-segment pln))) 2))))

(define (plane x1 x2 y1 y2)
(make-segment (make-point x1 y1) (make-point x2 y2)))

(define (print-point p)
(newline)
(display "(")
(display (x-point p))
(display ",")
(display (y-point p))
(display ")"))