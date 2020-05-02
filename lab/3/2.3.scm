(define (make-rect s1 s2 s3 s4)
(cons s1 (cons s2 (cons s3 (cons s4 s1))))
)

(define (rect x1 y1 x2 y2 x3 y3 x4 y4)
(make-rect 
(plane x1 x2 y1 y2) 
(plane x2 x3 y2 y3)
(plane x3 x4 y3 y4)
(plane x4 x1 y4 y1)
))

(define (perimeter rect)
(define lw (make-lw (car rect) (car (cdr (cdr rect)))))
(+ (* 2 (car lw)) (* 2 (cdr lw)))
)

(define (area rect)
(define lw (make-lw (car rect) (car (cdr (cdr rect)))))
(* (car lw) (cdr lw))
)
    

(define (make-lw p1 p2)
(cons (- (x-point (start-segment p2)) (x-point (start-segment p1))) (- (y-point (start-segment p2)) (y-point (start-segment p1)))))

    
; (0,0) (0,2) (2,2) (2,0)