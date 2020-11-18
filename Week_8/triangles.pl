triangles( N, R )
    :- loop( 1, N, R ).

loop( I, N, [] )
    :- I > N.
loop( I, N, [V|W] )
    :- V is I * (I + 1) // 2,
    I1 is I + 1,
    loop( I1, N, W ).

main
    :- triangles( 1, R ),
        write( R ).