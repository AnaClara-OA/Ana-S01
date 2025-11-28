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

divindade_olimpica(Deus) :-
    filho(Deus, cronos),
    dominio(Deus, Dom),
    (Dom = ceu ; Dom = mar ; Dom = submundo).

deus_maior(Deus) :-
    habita(Deus, olimpo),
    findall(Dom, dominio(Deus, Dom), ListaDominios),
    length(ListaDominios, N),
    N >= 2.

irmaos_germanos(A, B) :-
    filho(A, Pai),
    filho(B, Pai),
    filho(A, Mae),
    filho(B, Mae),
    Pai \= Mae,
    A \= B.
