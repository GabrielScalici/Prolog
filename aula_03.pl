pode_ir(a,[b, c, d]).
pode_ir(b,[e,f]).
pode_ir(b,[f]).
pode_ir(c,[g]).
pode_ir(d,[h]).
pode_ir(h,[k,j]).

busca_pro(X,Y) :-
    pode_ir(X,Y),
    busca_pro(Y,Z).
