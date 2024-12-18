(ns triangle)

(defn is-valid? [a b c] ;; <- arglist goes here
  ;; your code goes here
  ; (cond (>= (+ a b) c) true
  ;       (>= balance 1000) 1.621
  ;       (>= balance 0) 0.5
  ;       :else -3.213)
  (and (> a 0) (> b 0) (> c 0) (>= (+ a b) c) (>= (+ a c) b) (>= (+ b c) a))
)

(defn equilateral? [a b c] ;; <- arglist goes here
  ;; your code goes here
  (and (is-valid? a b c) (= a b) (= a c))
)

(defn isosceles? [a b c] ;; <- arglist goes here
  ;; your code goes here
  (and (is-valid? a b c) (or (= a b) (= a c) (= b c)))
)

(defn scalene? [a b c] ;; <- arglist goes here
  ;; your code goes here
  (and (is-valid? a b c) (not= a b) (not= a c) (not= b c))
)
