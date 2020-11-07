reverselist( [], [] ).
reverselist( [H|T], X )
    :- reverselist( T, W ), append( W, [H], X ).
main
    :- reverselist( [ 1, 6, 3, 4, 9, 7 ], X ),
        write( X ).