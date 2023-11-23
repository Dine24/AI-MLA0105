% Predicate to place N queens on an NxN chessboard
n_queens(N, Queens) :-
    range(1, N, Rows),
    permutation(Rows, Queens),
    safe_queens(Queens).

% Predicate to check if queens in the given list do not attack each other
safe_queens([]).
safe_queens([Q|Queens]) :-
    no_attack(Q, Queens, 1),
    safe_queens(Queens).

% Predicate to check if a queen at column Col does not attack any queen in the list
no_attack(_, [], _).
no_attack(Q, [Q2|Queens], ColDiff) :-
    Q =\= Q2,
    Q + ColDiff =\= Q2,
    Q - ColDiff =\= Q2,
    ColDiff1 is ColDiff + 1,
    no_attack(Q, Queens, ColDiff1).

% Utility predicate to generate a range of numbers
range(Start, End, Range) :-
    findall(X, between(Start, End, X), Range).


