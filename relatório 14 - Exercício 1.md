filho(zeus, cronos).
filho(zeus, reia).

filho(poseidon, cronos).
filho(poseidon, reia).

filho(hades, cronos).
filho(hades, reia).

dominio(zeus, ceu).
dominio(poseidon, mar).
dominio(hades, submundo).

divindade_olimpica(deus) :-
filho(deus, cronos),
dominio(deus, Dom),
(Dom = ceu ; Dom = mar ; Dom = submundo).
