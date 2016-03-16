%%Exercicio 5.2 pag 29
tam([_],1):-!.
tam([_|Xs],N):-tam(Xs,NXs), N is NXs+1.