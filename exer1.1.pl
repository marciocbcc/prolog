%%Exerc 1.1 Pag 6
pai(adao,cain).
pai(adao,abel).
pai(adao,seth).
pai(seth,enos).

avo(X,Z):-pai(X,Y),pai(Y,Z).
irmao(X,Y):-pai(A,X),pai(A,Y),X\=Y.
tio(X,Y):-pai(A,Y),irmao(X,A).