memberlist(E, [E|_] ).
memberlist(E, [_|T] )
    :- memberlist(E, T).

main
    :- memberlist(7, [8,6,4,7,9] ).
        write( x ).