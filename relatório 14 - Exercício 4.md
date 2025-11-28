filho(zeus, cronos).
filho(zeus, reia).

filho(poseidon, cronos).
filho(poseidon, reia).

filho(hades, cronos).
filho(hades, reia).

dominio(zeus, ceu).
dominio(poseidon, mar).
dominio(hades, submundo).

habita(zeus, olimpo).
habita(poseidon, oceano).
habita(hades, submundo).

pais(urano, cronos).
pais(urano, reia).

pais(cronos, zeus).
pais(cronos, poseidon).
pais(cronos, hades).

% Exemplo de filhos de Zeus:
% progenitor(zeus, ares).
% progenitor(zeus, atena).
% progenitor(zeus, hermes).

divindade_olimpica(deus) :-
    filho(deus, crono),
    dominio(deus, Dom),
    (Dom = ceu ; Dom = mar ; Dom = submundo).

deus_maior(deus) :-
    habita(deus, olimpo),
    findall(Dom, dominio(deus, Dom), ListaDom),
    length(ListaDom, N),
    N >= 2.

ancestral(A, D) :-
    pai(A, D).        

ancestral(A, D) :-
    pai(A, Z),        
    ancestral(Z, D).

