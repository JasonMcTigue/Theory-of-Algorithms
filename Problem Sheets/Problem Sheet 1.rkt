#lang racket
;Problem sheet 1 - Question 1
;a
(*(+(/ 10 5)5)3)
;b
(+ 2 3 4 5)

;c
(+(+(+(/ 10 3)2)5)1)

;d
(+(+(+(/ 10 3.0)2)5)1)

;e
(+(*(/ 10 2))3 5)
;f not sure which way is correct
(+(*(/(+(+(+(/ 10 3)2)5)1)10 2))3 5)

(+(+(+(+(/ 10 3)2)5)1) (+(*(/ 10 2))3 5))

;=================================

;Question 2
;a

(define (discount3 x y)
 (-(+ x) (*(/ y 100) x) ))
(discount3 10 5)
(discount3 29.90 50)

;==================================
;Wrong attemps
(define (discount x y)
 (*(/ y 100)x) )

;(discount 10 5)
;(discount 29.90 50)

(define (discount2 x y)
  ( - (*(/ y 100)x)(- x y) ))
;(discount2 10 5)
;(discount2 29.90 50)
;=================================

;Question 3
(define (grcomdiv a b)
  (cond ((= b 0) a)
        (else (grcomdiv b (remainder a b)))))

(grcomdiv 10 15)
(grcomdiv 64 30)

;Question 4
(define (appearances num l) (count (lambda (val) (= val num)) l))
(appearances 2 '(2 3 4 2 2))

;Question 5
;question 6

;Question 7
;The size of the problem is never being reduced therefor will never end.

;(define (forever n)
 ;  (if (= n 0)
   ;     1
   ;     (+ 1 (forever n))))
;(forever 1)

(define (not-forever n)
  (if (= n 0)
    1
    (+ 1 (not-forever (- n 1)))))

(not-forever 1)

;Question 9
(define (reversel l)
  (if (null? l)
     null ; If list is empty, then reverse list is also empty 
     (append (reversel (cdr l)) (list (car l))) ;else behind reverse tail of the list add first element of the list
  )
)

(define m (list 1 2 3))
m

(reversel m)

;Question 10
(define (sum-of-multiples a b limit)
  (define (sum-of-multiple x)
    (for/fold ((sum 0))
              ((i (in-range 0 limit x)))
      (+ sum i)))
  (- (+ (sum-of-multiple a) (sum-of-multiple b))
     (sum-of-multiple (lcm a b))))

(sum-of-multiples 3 5 1000 )
