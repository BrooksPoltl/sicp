(define (plural wd)
	(if (equal? (last wd) 'y)
		(if (vowel? (last (bl wd)))
		(word wd 's)
		(word (bl wd) 'ies))
	(word wd 's)))

(define (vowel? letter)
	(member? letter '(a e i o u)))
