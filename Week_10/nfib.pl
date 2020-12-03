nfib( 0, 1 ).
nfib( 1, 1 ).
nfib( N, R )
    :- N1 is N - 1,
        N2 is N - 2,
        nfib( N1, R1 ),
        nfib( N2, R2 ),
        R is 1 + R1 + R2.

nfib( 0, 1 ).
nfib( 1, 1 ).
nfib( N, R )
    :- N > 1,
        N1 is N - 1,
        N2 is N - 2,
        nfib( N1, R1 ),
        nfib( N2, R2 ),
        R is 1 + R1 + R2.

main
    :- nfib( 20, R ),
        write( R ).