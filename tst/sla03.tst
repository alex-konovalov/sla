# SLA, chapter 3
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been autogenerated with GAP. It contains examples
# extracted from the documentation. Each example is preceded by the
# comment which points to the location of its source.
#
gap> START_TEST( "sla03.tst");

# doc/manual.xml:385-389
gap> L:= SimpleLieAlgebra("E",6,Rationals);;
gap> o:= NilpotentOrbit( L, [1,2,0,0,0,1] );
<nilpotent orbit in Lie algebra of type E6>

# doc/manual.xml:410-421
gap> L:= SimpleLieAlgebra("E",6,Rationals);;
gap> orbs:= NilpotentOrbits(L);;
gap> orbs[10];
<nilpotent orbit in Lie algebra of type E6>
gap> Length(orbs);
20
gap> L:= SimpleLieAlgebra("B",4,Rationals);;
gap> orbs:= NilpotentOrbits(L);;            
gap> OrbitPartition( orbs[10] );
[ 5, 3, 1 ]

# doc/manual.xml:446-453
gap> L:= SimpleLieAlgebra("B",3,Rationals);;
gap> WeightedDynkinDiagram( L, L.1+L.9 ); 
[ 2, 0, 0 ]
gap> L:= SimpleLieAlgebra("E",6,Rationals );;
gap> WeightedDynkinDiagram(L, L.1+L.6+L.20+2*L.32 : table:= true );
[ 0, 0, 0, 1, 0, 0 ]

# doc/manual.xml:491-497
gap> L:= SimpleLieAlgebra("E",6,Rationals);;
gap> orbs:= NilpotentOrbits(L);;
gap> SL2Triple( orbs[10] );
[ (4)*v.51+(3)*v.53+(3)*v.56+v.59, (4)*v.73+(6)*v.74+(8)*v.75+(11)*v.76+(
    8)*v.77+(4)*v.78, v.15+v.17+v.20+v.23 ]

# doc/manual.xml:511-520
gap> L:= SimpleLieAlgebra("E",6,Rationals);;
gap> orbs:= NilpotentOrbits(L);;
gap> RandomSL2Triple( orbs[10] );
[ (3)*v.49+(3)*v.50+v.51+(4)*v.59, (4)*v.73+(6)*v.74+(8)*v.75+(11)*v.76+(
    8)*v.77+(4)*v.78, v.13+v.14+v.15+v.23 ]
gap> RandomSL2Triple( orbs[10] );
[ (3)*v.49+(4)*v.54+(3)*v.56+v.57, (4)*v.73+(6)*v.74+(8)*v.75+(11)*v.76+(
    8)*v.77+(4)*v.78, v.13+v.18+v.20+v.21 ]

# doc/manual.xml:540-554
gap> L:= SimpleLieAlgebra("F",4,Rationals);;
gap> orbs:= NilpotentOrbits(L);;
gap> sl2:= RandomSL2Triple( orbs[6] );
[ (2)*v.37+(2)*v.39+v.41, (3)*v.49+(4)*v.50+(6)*v.51+(8)*v.52, v.13+v.15+v.17 
 ]
gap> SL2Grading( L, sl2[2] );
[ [ [ v.3, v.5, v.7, v.8, v.9, v.11 ], 
      [ v.10, v.12, v.13, v.14, v.15, v.16, v.17, v.18, v.20 ], 
      [ v.19, v.21 ], [ v.22, v.23, v.24 ] ], 
  [ [ v.27, v.29, v.31, v.32, v.33, v.35 ], 
      [ v.34, v.36, v.37, v.38, v.39, v.40, v.41, v.42, v.44 ], 
      [ v.43, v.45 ], [ v.46, v.47, v.48 ] ], 
  [ v.1, v.2, v.4, v.6, v.25, v.26, v.28, v.30, v.49, v.50, v.51, v.52 ] ]

# doc/manual.xml:567-571
gap> L:= SimpleLieAlgebra("F",4,Rationals);;
gap> SL2Triple( L, L.1+L.20 );
[ v.16+v.25, v.49, v.1+v.20 ]

# doc/manual.xml:602-610
gap> L:= SimpleLieAlgebra("E",6,Rationals);;
gap> s:= InducedNilpotentOrbits(L);;
gap> s[19];
rec( norbit := <nilpotent orbit in Lie algebra of type E6>, 
  sheetdiag := [ 2, 0, 0, 1, 0, 2 ] )
gap> WeightedDynkinDiagram( s[19].norbit );
[ 0, 0, 0, 2, 0, 0 ]

# doc/manual.xml:624-632
gap> L:= SimpleLieAlgebra("E",6,Rationals);;
gap> RigidNilpotentOrbits(L);
[ <nilpotent orbit in Lie algebra of type E6>, 
  <nilpotent orbit in Lie algebra of type E6>, 
  <nilpotent orbit in Lie algebra of type E6> ]
gap> List( last, WeightedDynkinDiagram );
[ [ 0, 1, 0, 0, 0, 0 ], [ 0, 0, 0, 1, 0, 0 ], [ 1, 0, 0, 1, 0, 1 ] ]
gap> STOP_TEST("sla03.tst", 1 );
