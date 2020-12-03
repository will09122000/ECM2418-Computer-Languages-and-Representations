insert( E, [], [E] ).
insert( E, [H|T], [E,H|T] )
    :- E < H.
insert( E, [H|T], [H|W] )
    :- E >= H,
        insert( E, T, W ).

seqsort( [], [] ).
seqsort( [H|T], W )
    :- seqsort( T, R ),
        insert( H, R, W ).

main
    :- seqsort( [ 12,6,9,2,7,1 ], R ),
        write( R ).