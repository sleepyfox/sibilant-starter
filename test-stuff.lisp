(var test (require "tape"))

;;
;; Using the TAP form of tests
;;
(test "Tesing life, the universe, and everything..."
      (# (t)
         (t.plan 2)
         (t.ok true)
         (t.equal (* 6 9) 42)))
