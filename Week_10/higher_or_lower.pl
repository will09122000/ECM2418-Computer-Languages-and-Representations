main
    :- writeln( 'Pick a number' ),
        read( G ),
        random( 0, 1000, R ),
        loop( G, R ).

loop( G, G )
    :- writeln( 'right!' ).

loop( G, R )
    :- G > R,
        writeln( 'lower!' ),
        read( G1 ),
        loop( G1, R ).

loop( G, R )
    :- G < R,
        writeln( 'higher!' ),
        read( G1 ),
        loop( G1, R ).