adjacent( 1, 3 ).
adjacent( 1, 4 ).
adjacent( 1, 5 ).
adjacent( 2, 3 ).
adjacent( 2, 4 ).
adjacent( 3, 4 ).
adjacent( 4, 5 ).

color( red ).
color( yellow ).
color( pink ).
color( purple ).


conflict( color( Node1, Color ), color( Node2, Color )) :-
       adjacent( Node1, Node2 ).


noconflict( _, [] ).
noconflict( Coloring1, [Coloring2 | Colorings] ) :-
    not( conflict( Coloring1, Coloring2 )),
        noconflict( Coloring1, Colorings ).

findcoloring( [], [] ).
findcoloring( [Node | Nodes], [Coloring | Colorings] ) :-
    findcoloring( Nodes, Colorings ),
    Coloring = color( Node, Color ),
    color( Color ),
    noconflict( Coloring, Colorings ).