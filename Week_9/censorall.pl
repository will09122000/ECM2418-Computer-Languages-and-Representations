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

censorall( [], [] ).
censorall( [H|T], [V|W] )
    :- censor( H, V ),
        censorall( T, W ).
main
    :- censorall( [ 'damn', 'and', 'blast' ], X ),
        write( X ).