espanol(manolo).
mexicano(juan).
estadounidense(john).
ingles(peter).
colombiano(anselmo).

% Reglas para determinar si alguien es europeo
europeo(X) :- espanol(X).
europeo(X) :- ingles(X).

% Reglas para determinar si alguien es americano
americano(X) :- mexicano(X).
americano(X) :- colombiano(X).
americano(X) :- estadounidense(X).


terricola(X) :- europeo(X).
terricola(X) :- americano(X).


mismo_continente(X, Y) :- europeo(X), europeo(Y).
mismo_continente(X, Y) :- americano(X), americano(Y).