partition( _, [], [], [] ).
partition( P, [H|T], [H|V], W )
    :- H < P,
        partition( P, T, V, W ).
partition( P, [H|T], V, [H|W] )
    :- H >= P,
        partition( P, T, V, W ).

main
    :- partition( 9, [ 12,6,11,2,7,1 ], V, W ),
        write( V ),
        write( W ).