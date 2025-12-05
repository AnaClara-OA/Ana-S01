falta_concluir(Aluno, Disciplina) :-
    prerequisito(Disciplina, _),
    \+ concluiu(Aluno, Disciplina).

falta_pre_requisito(Aluno, Disciplina) :-
    prerequisito(Disciplina, PreReq),
    \+ concluiu(Aluno, PreReq).

aluno_apto(Aluno, Disciplina) :-
    area(Disciplina, Area),
    Area \= fundamental,
    \+ falta_pre_requisito(Aluno, Disciplina).

% Queries 
% ?- aluno_apto(joao, D).
% ?- aluno_apto(maria, inteligencia_artificial).
