% Fatos de distância
distancia(joao, curta).
distancia(maria, longa).
distancia(pedro, curta).

% Fatos de chuva
chovendo(joao, nao).
chovendo(maria, nao).
chovendo(pedro, sim).

% Fatos de carro
possui_carro(joao, nao).
possui_carro(maria, sim).
possui_carro(pedro, sim).


% --- REGRAS DE RECOMENDAÇÃO ---

transporte(Pessoa, caminhar) :-
    distancia(Pessoa, curta),
    chovendo(Pessoa, nao).

transporte(Pessoa, bicicleta) :-
    distancia(Pessoa, longa),
    chovendo(Pessoa, nao).

transporte(Pessoa, carro) :-