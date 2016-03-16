%Exercicio 5.3 pag 30
soma([],0).
soma([X|Xs],Soma):-soma(Xs,S),Soma is S+X.