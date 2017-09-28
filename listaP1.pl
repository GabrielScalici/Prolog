bruxo(ron).
possuiVarinha(harry).
jogadorQuadribol(harry).
bruxo(X) :- possuiVassoura(X), possuiVarinha(X).
possuiVassoura(X) :- jogadorQuadribol(X).
