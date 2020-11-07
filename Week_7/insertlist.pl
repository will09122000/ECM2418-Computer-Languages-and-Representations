insertlist ( E, [], [E] ).
insertlist( E, [H|T], [E,H|T] )
    :- E < H.
insertlist( E, [H|T], [H|W] )
    :- E >= H,
        insertlist( E, T, W ).
main
    :- insertlist( 10, [1,4,7,9,12], X ),
        write( X ).