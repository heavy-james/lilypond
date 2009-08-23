%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.4"

\header {
  lsrtags = "simultaneous-notes"

%% Translation of GIT committish: b2d4318d6c53df8469dfa4da09b27c15a374d0ca
  texidoces = "
Al utilizar la posibilidad de combinación automática de partes, se
puede modificar el texto que se imprime para las secciones de solo
y de unísono:

"
  doctitlees = "Cambiar los textos de partcombine"

%% Translation of GIT committish: d96023d8792c8af202c7cb8508010c0d3648899d
  texidocde = "
Wenn Stimmen automatisch kombiniert werden, kann der Text, der für
Solo- und Unisono-Stellen ausgegeben wird, geändert werden:

"
  doctitlede = "Partcombine-Text ändern"
%% Translation of GIT committish: c39256c433c9e0d80429fb768cde5834541524f8
  texidocfr = "
Lorsque vous regroupez automatiquement des parties, vous pouvez
modifier le texte qui sera affiché pour les solos et pour les parties à
l'unisson :

"
  doctitlefr = "Modification des indications de parties combinées"


  texidoc = "
When using the automatic part combining feature, the printed text for
the solo and unison sections may be changed:

"
  doctitle = "Changing partcombine texts"
} % begin verbatim

\new Staff <<
  \set Staff.soloText = #"girl"
  \set Staff.soloIIText = #"boy"
  \set Staff.aDueText = #"together"
  \partcombine
    \relative c'' {
      g4 g r r
      a2 g
    }
    \relative c'' {
      r4 r a( b)
      a2 g
    }
>>

