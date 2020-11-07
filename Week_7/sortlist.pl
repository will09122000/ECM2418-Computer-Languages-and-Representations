insertlist ( E, [], [E] ).
insertlist( E, [H|T], [E,H|T] )
    :- E < H.
insertlist( E, [H|T], [H|W] )
    :- E >= H,
        insertlist( E, T, W ).

sortlist ( [], [] ).
sortlist ( [H|T], X )
    :- sortlist( T, W ),
        insertlist( H, W, X ).

main
    :- sortlist( [8,6,4,7,9 ], X ),
        write( X ).