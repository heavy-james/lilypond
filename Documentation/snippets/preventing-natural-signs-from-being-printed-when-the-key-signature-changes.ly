%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.14.0"

\header {
%% Translation of GIT committish: COMMITTISH
  texidocit = "
Quando l'armatura di chiave cambia, vengono inseriti automaticamente i
segni di bequadro per annulare le alterazioni di precedenti armature.  Si
può evitare questo comportamento impostando su @code{f} (falso) la proprietà
@code{printKeyCancellation} nel contesto @code{Staff}.

"
  doctitleit = "Impedire l'inserimento dei segni di bequadro quando cambia l'armatura di chiave"

  lsrtags = "pitches"


%% Translation of GIT committish: 6977ddc9a3b63ea810eaecb864269c7d847ccf98
doctitlees = "Evitar que se impriman becuadros cuando cambia la armadura"

texidoces = "

Cuando cambia la armadura de la tonalidad, se imprimen becuadros
automáticamente para cancelar las alteraciones de las armaduras
anteriores.  Esto se puede evitar estableciendo al valor @qq{falso} la
propiedad @code{printKeyCancellation} del contexto @code{Staff}.

"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
doctitlede = "Auflösungzeichen nicht setzen wenn die Tonart wechselt"

texidocde = "
Wenn die Tonart wechselt, werden automatisch Auflösungszeichen ausgegeben,
um Versetzungszeichen der vorherigen Tonart aufzulösen.  Das kann
verhindert werden, indem die @code{printKeyCancellation}-Eigenschaft
im @code{Staff}-Kontext auf \"false\" gesetzt wird.
"

%% Translation of GIT committish: 3b125956b08d27ef39cd48bfa3a2f1e1bb2ae8b4
  texidocfr = "
Après un changement de tonalité, un bécarre est imprimé pour annuler
toute altération précédente.  Ceci peut être supprimé en réglant à
@code{\"false\"} la propriété @code{printKeyCancellation} du contexte
@code{Staff}.

"
  doctitlefr = "Suppression des bécarres superflus après un changement de tonalité"

  texidoc = "
When the key signature changes, natural signs are automatically printed
to cancel any accidentals from previous key signatures.  This may be
prevented by setting to @code{f} the @code{printKeyCancellation}
property in the @code{Staff} context.

"
  doctitle = "Preventing natural signs from being printed when the key signature changes"
} % begin verbatim

\relative c' {
  \key d \major
  a4 b cis d
  \key g \minor
  a4 bes c d
  \set Staff.printKeyCancellation = ##f
  \key d \major
  a4 b cis d
  \key g \minor
  a4 bes c d
}

