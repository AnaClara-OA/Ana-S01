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

divindade_olimpica(deus) :-
    filho(deus, cronos),
    dominio(deus, Dom),
    (Dom = ceu ; Dom = mar ; Dom = submundo).

deus_maior(deus) :-
    habita(deus, olimpo),
    findall(Dom, dominio(deus, Dom), ListaDominios),
    length(ListaDominios, N),
    N >= 2.
