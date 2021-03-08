%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% SIST. REPR. CONHECIMENTO E RACIOCINIO - MiEI/3

%--------------------------------- - - - - - - - - - -  -  -  -  -   -

%--------------------------------- - - - - - - - - - -  -  -  -  -   -



%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Extensao do predicado par: N -> {V,F}

par( 0 ).
par( X ) :-
    N is X-2,
    N >= 0,
    par( N ).
	
par2(N):- N mod 2 =:= 0.

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Extensao do predicado impar: N -> {V,F}

impar( 1 ).
impar( X ) :-
    N is X-2,
    N >= 1,
    impar( N ).

%impar(N):- N mod 2 =:= 1.

%--------------------------------- - - - - - - - - - -  -  -  -  -   -

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Extensao do meta-predicado nao: Questao -> {V,F}

nao( Questao ) :-
    Questao, !, fail.
nao( Questao ).

%------------------------ - - - - - -- -- - - - - 
max(X,Y,Y):- X=< Y.
max(X,Y,X):- X > Y.
%------------------------ - - - - - - -- - - --
divisor(X,NL):-divisor(X,X,NL).
divisor(X,Y,[Y|L]):-
				Y > 0,
				X mod Y =:= 0,
				YY is Y-1,
				divisor(X,YY,L).
divisor(X,Y,L):-
				Y>0,
				X mod Y =\= 0,
				YY is Y-1,
				divisor(X,YY,L).
divisor(X,1,[1]).								


primo(X):-
		divisor(X,L),
		length(L,2).

mdc(X,Y,R):-
		X>Y,
		X1 is X-Y,
		mdc(X1,Y,R).
mdc(X,Y,R):- 
		Y>X,
		Y1 is Y-X,
		mdc(X,Y1,R).
mdc(X,X,X).

fibonacci(0,1).
fibonacci(1,1).
fibonacci(N,F):-
			N>1,
			N1 is N-1,
			fibonacci(N1,F1),
			N2 is N-2,
			fibonacci(N2,F2),
			F is F1+F2.				