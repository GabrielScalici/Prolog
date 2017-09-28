/*
    Exercicio 1 da lista de prolog
    Corrigido os erros, anotando em comentarios
*/

bruxo(ron).
possuiVarinha(harry).
jogadorQuadribol(harry).
/* temVarinha, diferente de possui varinha*/
bruxo(X) :- possuiVassoura(X), possuiVarinha(X).
/* temVassoura, diferente de possui vassoura*/
possuiVassoura(X) :- jogadorQuadribol(X).

/*
  Item b:

  True para:
  bruxo(ron).
  bruxo(harry).

  false para:
  bruxo(hermione).

  correcao para sintaxe correta:
  bruxa(ron).
  bruxa(hermione).
  bruxa(Y).

  bruxo(Y), respostas:
  ron e harry
*/
