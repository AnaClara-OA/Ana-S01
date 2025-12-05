disciplina_raiz(D) :-
    \+ prerequisito(D, _).

disciplina_folha(D) :-
    \+ prerequisito(_, D).

%  Query 
% ?- disciplina_raiz(D), area(D, Area), Area \= aplicacoes.
