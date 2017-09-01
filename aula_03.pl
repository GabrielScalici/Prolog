pode_ir(a,b).
pode_ir(a,c).
pode_ir(a,d).
pode_ir(b,e).
pode_ir(b,f).
pode_ir(c,g).
pode_ir(d,h).
pode_ir(h,k).
pode_ir(h,j).

pertence(E, [E|_]) :- !.
pertence(E, [_|T]) :-
  pertence(E,T).


caminho_busca_pro_tras(EI, EF, Cam) :-
  caminho_p_t(EF, [EI], Cam).

  caminho_p_t(EF, [EF|Cam], [EF|Cam]).

  caminho_p_t(EF, [Eaux|Caminho_percorrido],Cam) :-
    pode_ir(Eaux, X),
    not(pertence(X, Caminho_percorrido)),
    caminho_p_t(EF, [X, Eaux|Caminho_percorrido], Cam).
