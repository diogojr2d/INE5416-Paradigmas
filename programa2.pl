:- consult('linguagens.pl').   %considere 'linguagens.pl' dado

% t1B
% -----------------------------------

% Questão 1 (resolvida)
lingnaosaopre(L) :- linguagem(L, _), \+predecessora(_, L).

% Questão 2
lingprecomum(L1, L2, Lp) :-
    predecessora(L1, Lp),
    predecessora(L2, Lp),
    L1 \= L2.

% Questão 3
lingprepre(Lpp, Lp, L) :-
    predecessora(L, Lp),
    predecessora(Lp, Lpp).

% Questão 4
lingpredecada(Lp, L) :-
    predecessora(L, Lp),
    linguagem(L, X),
    linguagem(Lp, Y),
    X >= Y+10.

% Questão 5
lingdecada(L, D) :-
    linguagem(L, X),
    Y is floor(X/10)*10,
    Y =:= D.

% Questão 6
lingcommultipre(L) :-
    predecessora(L, X),
    predecessora(L, Y),
    X \= Y.
