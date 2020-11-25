
last( [E], E ).
last( [_|T], W )
    :- last( T, W ).

main
    :- last( [ 1, 2, 3, 4, 5, 6 ], R ),
        write( R ).