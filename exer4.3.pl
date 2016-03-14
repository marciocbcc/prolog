estrada(a,b,25).
estrada(a,d,23).
estrada(b,c,19).
estrada(b,e,32).
estrada(c,d,14).
estrada(c,f,28).
estrada(d,f,30).
estrada(e,f,26).

caminho(X,Y,C):-estrada(X,Y,_),C=[X-Y].
caminho(X,Z,C):-estrada(X,Y,_),caminho(Y,Z,YZ),C=[X-Y|YZ].
