bruxo(ron).
possuiVarinha(harry).
jogadorQuadribol(harry).
bruxo(X) :- possuiVassoura(X), temVarinha(X).
temVassoura(X) :- jogadorQuadribol(X).
