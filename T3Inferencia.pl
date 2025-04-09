% Hechos: Relación entre personas y los lenguajes de programación que conocen.
sabe(ana, python).
sabe(ana, java).
sabe(juan, prolog).
sabe(carlos, python).
sabe(carlos, cplusplus).

% Regla: Una persona es considerada programadora si conoce al menos un lenguaje de programación.
programador(X) :- sabe(X, _).

% Regla: Una persona es considerada desarrollador full-stack si conoce Python y Java.
fullstack(X) :- sabe(X, python), sabe(X, java).