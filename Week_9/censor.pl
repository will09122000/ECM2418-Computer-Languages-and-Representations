stars( 0, [] ).
stars( N, [ 42 | W ] )
    :- N1 is N - 1,
        stars( N1, W ).

blat( [], [] ).
blat( [E], [E] ).
blat( [E,F], [E,F] ).
blat( [H|T], [H|W] )
    :- length( T, N ),
        N1 is N - 1,
        stars( N1, U ),
        last( T, V ),
        append( U, [V], W ).

censor( V, W )
    :- name( V, A ),
        blat( A, B ),
        name( W, B ).

main
    :- censor( 'shit', X ),
        write( X ).