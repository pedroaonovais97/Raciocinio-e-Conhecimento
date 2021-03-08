%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% SIST. REPR. CONHECIMENTO E RACIOCINIO - MiEI/3

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Operacoes aritmeticas e conjuntos (listas).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Extensao do predicado soma: X,Y,Soma -> {V,F}

soma( X,Y,Soma ) :-
    Soma is X+Y.

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Extensao do predicado soma: X,Y,Z,Soma -> {V,F}

soma(X,Y,Z,Soma) :-
    Soma is X+Y+Z.

%--------------------------------- - - - - - -  ----- - - -
operacao(adicao,X,Y,Adicao):-
Adicao is X+Y.

operacao(sub,X,Y,Subtracao):-
Subtracao is X - Y.

operacao(mult,X,Y,Multiplicacao):-
Multiplicacao is X*Y.

operacao(div,X,Y,Divisao):-
Y /= 0, Divisao is 0.
operacao(div,X,Y,Divisao):-
Divisao is X/Y.

%-----------------------------------
max(X,Y,M):- X>= Y, Max is X.
max(X,Y,M):- X < Y, Max is Y.
