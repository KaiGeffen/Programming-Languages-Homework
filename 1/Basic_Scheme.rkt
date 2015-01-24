#lang plai
;; Copied first one from online answers
;; https://cs.brown.edu/courses/cs173/2010/Assignments/support/solution-1.rkt

;; 1. Function to total the amount of change (pennies, nickels, dimes, quarters)
;;    in a bag.
(define (sum-coins pen nick dime quart)
  (+ (* .01 pen) (* .05 nick) (* .10 dime) (* .25 quart)))

(test (sum-coins 4 3 2 1) .64)

;; 2. Function to calculate surface area of cylinder with given radius and height
(define (calc-cyl-surface r h)
  (* (* 2 pi) (+ (* r h) (sqr r))))

(test (calc-cyl-surface 0 0) 0)
(test (calc-cyl-surface 0 1) 0)
(test (calc-cyl-surface 1 0) (* 2 pi))
(test (calc-cyl-surface 1 1) (* 4 pi))