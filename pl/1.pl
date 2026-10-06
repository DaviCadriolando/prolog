aluno(joao).
aluno(maria).
aluno(pedro).
aluno(davi).

matriculado(joao).
matriculado(maria).
matriculado(pedro).
matriculado(davi).


pode_acessar(x) :-
    aluno(x),
    matriculado(x).