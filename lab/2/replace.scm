(define (substitute sent old new)
    (if (equal? sent '())
        '()
        (se (replace (first sent) old new) (substitute (bf sent) old new))))

(define (replace wd old new)
    (if (equal? wd old)
        new
        wd)
)