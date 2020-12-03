insert( E, [], [E] ).
insert( E, [H|T], [E,H|T] )
    :- E < H.
insert( E, [H|T], [H|W] )
    :- E >= H,
        insert( E, T, W ).

main
    :- insert( 6, [ 1, 4, 5, 7, 9, 12 ], R ),
        write( R ).