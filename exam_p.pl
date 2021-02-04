
tonto( [X|Y], Z, W )
    :- member( X, Z ),
        tonto( Y, Z, W ).
tonto( [X|Y], Z, [X|W] )
    :- \+ member( X, Z ),
        tonto( Y, Z, W ).
tonto( [], Z, Z ).

intersperse( [], _, []).
intersperse( [_|T], X, [_,X|T1])
    :- intersperse( T, X, T1).

main
    :- tonto( ['A', 'B', 'C'], 'A', X),
        write( X ).