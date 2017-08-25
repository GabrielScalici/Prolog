lista1([1,2,3]).
lista2([4,5,6]).
lista3([]).
concatenar([],L,L).
concatenar([X|L1], L2, [X|L3]):-
  concatenar(L1,L2,L3).
