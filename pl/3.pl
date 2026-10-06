professor(marcelo).
professor(carla).
coordenador(renata).
aluno(joana).


pode_entrar(X) :-
    professor(X);
    coordenador(X).
  