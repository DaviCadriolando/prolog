professor(roberto).

aluno(lucas).
aluno(gabriel).

autorizacao(lucas).

acesso_laboratorio(X) :-
    professor(X);
    (aluno(X),autorizacao(X)).
