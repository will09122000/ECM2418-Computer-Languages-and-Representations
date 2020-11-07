sumlist( [], 0 ).
sumlist( [H|T], N )
    :- sumlist( T, W ), N is H + W.

main
    :- sumlist( [ 6, 2, 3, 9, 5 ], X ),
        write( X ).