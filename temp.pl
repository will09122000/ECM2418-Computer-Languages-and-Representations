sl( [], 0, 0 ).
sl( [H|T], V, W )
    :- sl( T, P, Q ),
        V is H + P,
        W is 1 + Q.

allsame( [] ).
allsame( [H] ).
allsame( [H|H1|T] )
    :- H =:= H1,
        allsame( [H1|T] ).

main
    :- sl([1, 2, 3], X, Y),
        writeln( X ),
        writeln( Y ).
