%%Exerc 1.2 Pag 7
%%A-
mae(ana,eva).
mae(eva,noe).
mae(bia,rai).
mae(bia,clo).
mae(bia,ary).
mae(lia,gal).
pai(ivo,eva).
pai(rai,noe).
pai(gil,rai).
pai(gil,clo).
pai(gil,ary).
pai(ary,gal).

mulher(ana).
mulher(eva).
mulher(bia).
mulher(clo).
mulher(lia).
mulher(gal).
homem(ivo).
homem(noe).
homem(gil).
homem(rai).
homem(ary).

gerou(X,Y):-pai(X,Y);mae(X,Y).
filho(F,P):-gerou(P,F),homem(F).
filha(F,P):-gerou(P,F),mulher(F).
tio(T,S):-gerou(P,S),irmao(P,T), homem(T).
tia(T,S):-gerou(P,S),irmao(P,T), mulher(T).
primo(X):-gerou(P1,X),gerou(P2,_),irmao(P1,P2),homem(X).
prima(X):-gerou(P1,X),gerou(P2,_),irmao(P1,P2),mulher(X).



