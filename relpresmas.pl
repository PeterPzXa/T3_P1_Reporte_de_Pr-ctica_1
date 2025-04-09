% filepath: c:\Users\pedro\Documents\Tema3\relpresmas.pl

% Base de conocimientos sobre personas y sus mascotas

% Hechos: Persona tiene una mascota
tiene_mascota(juan, perro).
tiene_mascota(maria, gato).
tiene_mascota(carlos, pez).
tiene_mascota(luisa, tortuga).

% Hechos: Tipo de animal
es_mamifero(perro).
es_mamifero(gato).
es_reptil(tortuga).
es_pez(pez).

% Reglas

% es_dueño(Persona, Mascota) es verdadero si Persona tiene una mascota.
es_dueno(X, Y) :- tiene_mascota(X, Y).

% mascota_mamifera(Persona) es verdadero si Persona tiene una mascota que es un mamífero.
mascota_mamifera(X) :- tiene_mascota(X, Y), es_mamifero(Y).