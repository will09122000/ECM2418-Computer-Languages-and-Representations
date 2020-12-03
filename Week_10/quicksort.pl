partition( _, [], [], [] ).
partition( P, [H|T], [H|V], W )
    :- H < P,
        partition( P, T, V, W ).
partition( P, [H|T], V, [H|W] )
    :- H >= P,
        partition( P, T, V, W ).

quicksort( [], [] ).
quicksort( [H|T], R )
    :- partition( H, T, V, W ),
        quicksort( V, V1 ),
        quicksort( W, W1 ),
        append( V1, [H], A ),
        append( A, W1, R ).

main
    :- quicksort( [ 12,6,11,2,7,1 ], W ),
        write( W ).