% Fatos (pelo menos 6 relações)
pai(jose, carlos).
pai(jose, maria).
pai(carlos, lucas).
mae(ana, carlos).
mae(ana, maria).
mae(maria, julia).

% Regras
% 1. Quem é avô de determinada pessoa
avo(Avo, Neto) :-
    pai(Avo, PaiOuMae),
    (pai(PaiOuMae, Neto) ; mae(PaiOuMae, Neto)).

% 2. Quem são os filhos de determinada pessoa
filho(Filho, Genitor) :-
    pai(Genitor, Filho) ; mae(Genitor, Filho).

% 3. Quem possui o mesmo pai
mesmo_pai(X, Y) :-
    pai(Pai, X),
    pai(Pai, Y),
    X \= Y.