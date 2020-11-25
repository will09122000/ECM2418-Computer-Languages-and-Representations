
stars( 0, [] ).
stars( N, [ 42 | W ] )
    :- N1 is N - 1,
        stars( N1, W ).

main
    :- stars( 6, R ),
        write( R ).