% definition du graphe
adj(1,2).
adj(1,3).
adj(1,4).
adj(1,5).
adj(2,3).
adj(2,4).
adj(3,4).
adj(4,5).
adjacent(X,Y):-adj(X,Y);adj(Y,X).

% definition des couleurs
couleur( vert ).
couleur( bleu ).
couleur( rouge ).
couleur( violet ).

% trouver les regions en conflit:
conflit(couleur( Region1, Couleur ), couleur( Region2, Couleur )) :-
    adjacent( Region1, Region2 ).

% vérifier si un coloriage du graphe est valide:
nonconflit( _, [] ).
nonconflit( Colorage1, [Colorage2 | Colorages] ) :-
    not( conflit( Colorage1, Colorage2 )),
    nonconflit( Colorage1, Colorages ).

trouvercolorage( [], [] ).
trouvercolorage( [Region | Regions], [Colorage | Colorages] ) :-
    trouvercolorage( Regions, Colorages ),
    Colorage = couleur( Region, Couleur),
    couleur( Couleur),
    nonconflit( Colorage, Colorages ).

% trouvercolorage( [1,2,3,4,5], L ).