%fatos simples
pode_ir(a,b).
pode_ir(a,c).
pode_ir(a,d).
pode_ir(b,e).
pode_ir(b,f).
pode_ir(c,g).
pode_ir(d,h).
pode_ir(h,k).
pode_ir(h,j).

%Saber se pertence, importante
pertence(E, [E|_]) :- !.
pertence(E, [_|T]) :-
  pertence(E,T).


%Caminho comecando de Final para Inicial
caminho_busca_pro_tras(EI, EF, Cam) :-
  caminho_p_t(EF, [EI], Cam).

  caminho_p_t(EF, [EF|Cam], [EF|Cam]).

  caminho_p_t(EF, [Eaux|Caminho_percorrido],Cam) :-
    pode_ir(Eaux, X),
    not(pertence(X, Caminho_percorrido)),
    caminho_p_t(EF, [X, Eaux|Caminho_percorrido], Cam).


%Caminho comecando de Inicial para Final
caminho_busca_pro_frente(EI, EF, Cam) :-
  caminho_p_f(EI, [EF], Cam).

  caminho_p_f(EI, [EI|Cam], [EI|Cam]).

  caminho_p_f(EI, [Eaux|Caminho_percorrido],Cam) :-
    pode_ir(X, Eaux),
      not(pertence(X, Caminho_percorrido)),
      caminho_p_f(EI, [X, Eaux|Caminho_percorrido], Cam).
