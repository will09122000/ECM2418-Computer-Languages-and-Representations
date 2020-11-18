factorisable( N )
:- loop( 2, N ).

loop( F, N )
:- F < N,
    0 is N mod F.
loop( F, N )
:- F < N,
    F1 is F + 1,
    loop( F1, N ).

prime( P )
:- \+ factorisable( P ).

primes( A, B, [] )
    :- A > B.
primes( A, B, [A|W] )
    :- prime( A ),
    A1 is A + 1,
    primes( A1, B, W ).
primes( A, B, W )
    :- A1 is A + 1,
    primes( A1, B, W ).

main
    :- primes( 2, 60, X ),
        write( X ).