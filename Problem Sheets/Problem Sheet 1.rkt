#lang racket
;Question 1
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

