maxlist([E], E).
maxlist([H|T], H)
    :- maxlist(T, W), H > W.
maxlist([H|T], W)
    :- maxlist(T, W), H =< W.

main
    :- maxlist( [ 1, 6, 3, 4, 9, 7 ], X ),
        write( X ).