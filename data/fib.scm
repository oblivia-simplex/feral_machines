(define Y
  (lambda (f)
    ((lambda (g)
       (g g))
     (lambda (g)
       (f (lambda a (apply (g g) a)))))))

(define Fibonacci
  (Y (lambda (fib)
       (lambda (n)
         (if (<= n 1)
             n
             (+ (fib (- n 1))
                (fib (- n 2))))))))
