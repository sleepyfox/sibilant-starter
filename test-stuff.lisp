(var tap (require "tap"))

;;
;; Using the TAP form of tests
;;
(tap.test "A test suite" (#(suite) 
  (suite.test "should be able to assert" (#(t)
    (t.ok true)
    (t.equal (+ 1 1) 2)))))

;;
;; Now to use a more RSpec like feel
;;
(tap.mochaGlobals)
(var assert (require "assert"))

(describe "A test suite" (#> 
  (it "should be able to tell the truth" (#>
    (assert.ok true "true")))
  (it "should be able to add up" (#>
    (assert.equal (+ 1 1) 2 "can add")))))