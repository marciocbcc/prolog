%%exercicio 5.1 pagina 29
ultimo([L],L):-!.
ultimo([_|Xs],U):-ultimo(Xs,U).