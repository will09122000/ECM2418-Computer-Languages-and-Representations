fromTo( P, Q, [] )
    :- P > Q.

fromTo( P, Q, [P|W] )
    :- P =< Q,
        P1 is P + 1,
            fromTo( P1, Q, W ).

main
    :- fromTo( 6, 10, X ),
        write( X ).