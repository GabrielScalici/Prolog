concatenar([],L,L).
concatenar([X|L1], L2, [X|L3]):-
  concatenar(L1,L2,L3).


gosta(gabriel,futebol).
gosta(gabriel,jogo).
gosta(gabriel,ler).
gosta(lury,comer).
gosta(lury,dancar).
gosta(gabriel,escrever).
gosta(lury,dormir).
gosta(felipe,comer).
gosta(felipe, estudar).
gosta(felipe, jogo).
gosta(lury, jogo).
gosta(adriana, comer).
gosta(adriana, dormir).
gosta(adriana, dancar).
gosta(roberto, comer).
gosta(roberto, dormir).
gosta(lury, musica).
gosta(felipe, musica).
gosta(gabriel, musica).
