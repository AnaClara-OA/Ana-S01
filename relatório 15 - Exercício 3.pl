especialista_comp(Aluno) :-
    concluiu(Aluno, D1),
    concluiu(Aluno, D2),
    D1 \= D2,
    area(D1, computacao),
    area(D2, computacao).

deficiencia_mat(Aluno) :-
    \+ (concluiu(Aluno, D),
        area(D, matematica)).

% Query 
% ?- especialista_comp(A), deficiencia_mat(A).
