
fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, Result) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, FibN1),
    fibonacci(N2, FibN2),
    Result is FibN1 + FibN2.
