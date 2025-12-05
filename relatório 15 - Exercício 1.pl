alto_impacto(D) :-
    creditos(D, C),
    C > 5,
    prerequisito(D1, D),
    prerequisito(D2, D),
    D1 \= D2.

% Query 2
% Consulta:
% ?- area(D, matematica), creditos(D, 4), \+ prerequisito(_, D).
