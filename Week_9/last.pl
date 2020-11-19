
last( [], X ).
last( [H|T], X )
    :- last( T, H ).

main
    :- last( [ 1, 2, 3, 4, 5, 6 ], X ),
        write( X ).