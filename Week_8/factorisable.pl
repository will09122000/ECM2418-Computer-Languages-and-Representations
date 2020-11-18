factorisable( N )
    :- loop( 2, N ).

loop( F, N )
    :- F < N,
        0 is N mod F.
loop( F, N )
    :- F < N,
        F1 is F + 1,
        loop( F1, N ).

main
    :- factorisable( 15 ),
        write( 'yay!').