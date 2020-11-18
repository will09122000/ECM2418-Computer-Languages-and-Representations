even( N )
    :- 0 is N mod 2.

main
    :- even( 1230 ), write( 'success' ).