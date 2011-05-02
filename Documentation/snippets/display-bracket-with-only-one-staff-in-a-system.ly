%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.12.2"

\header {
  lsrtags = "staff-notation, tweaks-and-overrides"

%% Translation of GIT committish: 59caa3adce63114ca7972d18f95d4aadc528ec3d
  texidoces = "
Si hay un solo pentagrama en un de los tipos de sistema
@code{ChoirStaff} o @code{StaffGroup}, el comportamiento
predeterminado es que no se imprima el corchete en la barra inicial.
Esto se puede cambiar sobreescribiendo las propiedades adecuadas.

Observe que en contextos como @code{PianoStaff} y
@code{GrandStaff} en que los sistemas empiezan con una llave en
lugar de un corchete, se debe establecer el valor de una propiedad
distinta, como se ve en el segundo sistema del ejemplo.

"
  doctitlees = "Mostrar corchete o llave en grupos de un solo pentagrama"



%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Wenn nur ein System einer Systemgruppe vom Typ @code{ChoirStaff} oder
@code{StaffGroup} angezeigt wird, wird die Klammer zu Beginn normalerweise
nicht gesetzt.  Das kann verändert werden, indem man die entsprechende
Eigenschaft verändert.

Bei Systemen wie @code{PianoStaff} und @code{GrandStaff}, die mit einer
geschweiften Klammer beginne, muss eine andere Eigenschaft verändert werden,
wie das zweite Beispiel zeigt.

"
  doctitlede = "Klammer anzeigen wenn nur ein System gesetzt wird"

%% Translation of GIT committish: 99dc90bbc369722cf4d3bb9f30b7288762f2167f6
  texidocfr = "
Lorsque, dans des regoupements de type @code{ChoirStaff} ou
@code{StaffGroup}, une seule portée est active, aucune indication n'est
donnée en début de ligne.  Surcharger la propriété adéquate permet de
modifier ce comportement par défaut.

Notez bien que dans le cas des @code{PianoStaff} et @code{GrandStaff},
pour lesquels le délimiteur de système est une accolade et non un
crochet, il ne s'agit pas de la même propriété -- voir le deuxième
@emph{système} de l'exemple.

"
  doctitlefr = "Indicateur de regroupement et portée unique"


  texidoc = "
If there is only one staff in one of the staff types @code{ChoirStaff}
or @code{StaffGroup}, the bracket and the starting bar line will not be
displayed as standard behavior.  This can be changed by overriding the
relevant properties.

Note that in contexts such as @code{PianoStaff} and @code{GrandStaff}
where the systems begin with a brace instead of a bracket, another
property has to be set, as shown on the second system in the example.

"
  doctitle = "Display bracket with only one staff in a system"
} % begin verbatim

\markup \left-column {
  \score {
    \new StaffGroup <<
      % Must be lower than the actual number of staff lines
      \override StaffGroup.SystemStartBracket #'collapse-height = #1
      \override Score.SystemStartBar #'collapse-height = #1
      \new Staff {
        c'1
      }
    >>
    \layout { }
  }
  \null
  \score {
    \new PianoStaff <<
      \override PianoStaff.SystemStartBrace #'collapse-height = #1
      \override Score.SystemStartBar #'collapse-height = #1
      \new Staff {
        c'1
      }
    >>
    \layout { }
  }
}
