:- consult('linguagens.pl').

% Questão 1 (resolvida)
lingcompre(L) :-
	predecessora(L, _).

% Escrever demais questões...

% Questão 2
lingprecompre(L) :-
	lingcompre(L),
	predecessora(_, L).

% Questão 3
lingpreano(Lp, A) :-
	linguagem(X, A),
	predecessora(X, Lp).