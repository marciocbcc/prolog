%%1-Arvore Genealogica
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
%%B-
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
%%C-
gerou(X,Y):-pai(X,Y);mae(X,Y).
%%D-
filho(F,P):-gerou(P,F),homem(F).
filha(F,P):-gerou(P,F),mulher(F).
tio(T,S):-gerou(P,S),irmao(P,T), homem(T).
tia(T,S):-gerou(P,S),irmao(P,T), mulher(T).
primo(X):-gerou(P1,X),gerou(P2,_),irmao(P1,P2),homem(X).
prima(X):-gerou(P1,X),gerou(P2,_),irmao(P1,P2),mulher(X).

%%2-
feliz(X):-gerou(X,_).
casal(X,Y):-gerou(X,Z),gerou(Y,Z),X\=Y.

%3-Produto de dois numeros
prod(_,0,0).
prod(X,Y,P):-Y2 is Y-1,prod(X,Y2,P2),P is P2+X,!.


%%6-
ultimo([L],L):-!.
ultimo([_|Xs],U):-ultimo(Xs,U).

%%7-
soma([],0).
soma([X|Xs],Soma):-soma(Xs,S),Soma is S+X.

%%8-
inv([],[]).
inv([X|Xs],INV):-inv(Xs,INV2),append(INV2,[X],INV).

%%9-
d(0,zero).
d(1,um).
d(2,dois).
d(3,tres).
d(4,quatro).
d(5,cinco).
d(6,seis).
d(7,sete).
d(8,oito).
d(9,nove).
txt([X],[P]):-d(X,P).
txt([X|Xs],P):-d(X,P1),txt(Xs,P2),append([P1],P2,P).

%%10-
estrada(1,a,b).
estrada(2,a,d).
estrada(3,b,c).
estrada(5,b,e).
estrada(4,c,d).
estrada(6,c,f).
estrada(7,d,f).
estrada(8,e,f).

rota(R,A,B):-estrada(N,A,B),append([N],[],R).
rota(R,A,B):-estrada(N1,A,X),rota(R2,X,B),append([N1],[R2],R).