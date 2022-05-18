% color map
coloriage( [], [] ).
coloriage( [Zone | Zones], [Coloring | Colorings] ) :-
    coloriage( Zones, Colorings ),
    Coloring = couleur( Zone, Color ),
    couleur( Color ),
    noconflict( Coloring, Colorings ).
