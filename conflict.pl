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

% colorage 1
color(1,blue,c1).
color(2,red,c1).
color(3,green,c1).
color(4,yellow,c1).
color(5,red,c1).

% colorage 2
color(1,green,c2).
color(2,red,c2).
color(3,green,c2).
color(4,yellow,c2).
color(5,green,c2).

% colorage 3
color(1,blue,c3).
color(2,blue,c3).
color(3,blue,c3).
color(4,blue,c3).
color(5,blue,c3).

% colorage 4
color(1,green,c4).
color(2,red,c4).
color(3,yellow,c4).
color(4,blue,c4).
color(5,yellow,c4).

% vérifier si un coloriage est valide:
conflict(C):-adjacent(X,Y),color(X,Color,C),color(Y,Color,C).

% connaître les régions adjacentes qui ont la même couleur:
conflict(X,Y,C):-adjacent(X,Y),color(X,Color,C),color(Y,Color,C).