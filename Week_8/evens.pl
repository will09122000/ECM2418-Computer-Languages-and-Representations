even( N )
    :- 0 is N mod 2.

evens( [], [] ).
evens( [H|T], [H|W] )
    :- even( H ),
        evens( T, W ).
evens( [H|T], W )
    :- \+ even( H ),
        evens( T, W ).

main
    :- evens( [ 5, 6, 7, 8, 9, 10 ], X ),
        write( X ).