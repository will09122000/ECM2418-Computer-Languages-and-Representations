
stars( 0, [] ).
stars( N, [U|W] )
    :- N > 0,
        name( *, [U] ),
        N1 is N - 1,
        stars( N1, W ).

main
    :- stars( 6, X ),
        write( X ).