%3-Produto de dois numeros
prod(X,1,X).
prod(X,Y,P):-Y2 is Y-1,prod(X,Y2,P2),P is P2+X.


%%4- Numero em Binario
