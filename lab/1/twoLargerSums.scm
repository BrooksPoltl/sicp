;;;; Take in 3 values and calc sum of the squares of the 2 largest

(define (twoLargerSums a b c)
    (if (>= a b)
        (if (>= b c)
            (+ (square a) (square b))
            (+ (square a) (square c)))
        (if (>= a c)
            (+ (square a) (square b))
            (+ (square b) (square c))))
)

(define (square x)
(* x x))

