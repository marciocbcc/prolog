%Exercicio 5.3 pag 30

max([L],L):-!.
max([X,Y|Cauda],MAX):-X>=Y,!,max([X|Cauda],MAX).
max([_,Y|Cauda],MAX):-max([Y|Cauda],MAX).