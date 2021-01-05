sl( [], 0, 0 ).
sl( [H|T], V, W )
	:- sl( T, P, Q ),
		V is H + P,
		W is 1 + Q.

a( A, B )
	:- sl( A, V, W ),
		B is V / W.

allsame( [] ).
allsame( [H|T] )
	:- loop( H, T ).

loop( _, [] ).
loop( X, [X|T] )
	:- loop( X, T).

population( 'Cornwall', 569578 ).
population( 'East Devon', 146284 ).
population( 'Mid Devon', 82311 ).
population( 'North Devon', 97145 ).
population( 'South Hams', 87004 ).
population( 'Teignbridge', 134163 ).

tier( 'Cornwall', 1 ).
tier( 'East Devon', 2 ).
tier( 'Mid Devon', 2 ).
tier( 'North Devon', 2 ).
tier( 'South Hams', 2 ).
tier( 'Teignbridge', 2 ).

main
	:- population( C, N),
        tier( C, T),
        N < 100000,
        T =:= 2,
        write( C ).