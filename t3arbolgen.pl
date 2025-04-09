% Relacion de paternidad
padre(pedro2, daniel).
padre(pedro2, jimena).
padre(geronimo, carol).
padre(geronimo, nadia).
padre(pedro,pedro2).
padre(pedro,azucena).
padre(margarito,geronimo).
padre(antonio,maria).
padre(rodrigo,guadalupe).
padre(federico,pedro).

% Relacion de maternidad
madre(carol, daniel).
madre(carol, jimena).
madre(maria, carol).
madre(maria, nadia).
madre(guadalupe, pedro2).
madre(guadalupe, azucena).
madre(victoria, geronimo).
madre(esther,maria).
madre(ines,guadalupe).
madre(tomasa,pedro).


% Abuelos (ya existente)
abuelo(X,Y):- padre(X,Z), (padre(Z,Y); madre(Z,Y)).
abuela(X,Y):- madre(X,Z), (padre(Z,Y); madre(Z,Y)).

% Bisabuelos
bisabuelo(X,Y) :- (padre(X,Z); madre(X,Z)), (abuelo(Z,Y); abuela(Z,Y)).

% Hermanos
hermano(X,Y) :- 
    X \= Y,
    ((padre(P,X), padre(P,Y)) ; 
     (madre(M,X), madre(M,Y))).

% Nietos
nieto(X,Y) :- (abuelo(Y,X) ; abuela(Y,X)).
