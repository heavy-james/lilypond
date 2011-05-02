%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.12.2"

\header {
  lsrtags = "fretted-strings"

%% Translation of GIT committish: 59caa3adce63114ca7972d18f95d4aadc528ec3d
  texidoces = "
Es posible ejercer un mayor control sobre la colocación de las
digitaciones de la mano derecha estableciendo el valor de una
propiedad específica, como se muestra en el ejemplo siguiente.  Nota:
se debe usar una construcción de acorde.

"
  doctitlees = "Posicionamiento de digitaciones de mano derecha"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Man kann die Positionierung von Fingersatz der rechten Hand besser
kontrollieren, wenn eine bestimmte Eigenschaft gesetzt wird, wie
das folgende Beispiel zeigt:

"
  doctitlede = "Positionierung von Fingersatz der rechten Hand"

%% Translation of GIT committish: ac6297e4fa174ac5759cc450ad085c2fac9ba00b

  texidocfr = "
Vous disposez d'une propriété spécifique qui permet de contrôler plus
finement le positionnement des doigtés main droite, comme l'indique
l'exemple suivant.

"
  doctitlefr = "Positionnement des doigtés main droite"


  texidoc = "
It is possible to exercise greater control over the placement of
right-hand fingerings by setting a specific property, as demonstrated
in the following example. Note: you must use a chord construct

"
  doctitle = "Placement of right-hand fingerings"
} % begin verbatim

#(define RH rightHandFinger)

\relative c {
  \clef "treble_8"

  \set strokeFingerOrientations = #'(up down)
  <c-\RH #1 e-\RH #2 g-\RH #3 c-\RH #4 >4

  \set strokeFingerOrientations = #'(up right down)
  <c-\RH #1 e-\RH #2 g-\RH #3 c-\RH #4 >4

  \set strokeFingerOrientations = #'(left)
  <c-\RH #1 e-\RH #2 g-\RH #3 c-\RH #4 >2
}

