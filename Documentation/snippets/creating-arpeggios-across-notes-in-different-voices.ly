%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.14.0"

\header {
  lsrtags = "expressive-marks"

%% Translation of GIT committish: 6977ddc9a3b63ea810eaecb864269c7d847ccf98
  texidoces = "
Se puede trazar un símbolo de arpegio entre notas de distintas
voces que están sobre el mismo pentagrama si el grabador
@code{Span_arpeggio_engraver} se traslada al contexto de
@code{Staff} context:

"
  doctitlees = "Crear arpegios entre notas de voces distintas"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Ein Arpeggio kann zwischen Noten aus unterschiedlichen Stimmen auf demselben
System gezogen werden, wenn der @code{Span_arpeggio_engraver} in den
@code{Staff}-Kontext verschoben wird:

"
  doctitlede = "Arpeggios zwischen unterschiedlichen Stimmen erzeugen"

%% Translation of GIT committish: 3b125956b08d27ef39cd48bfa3a2f1e1bb2ae8b4
  texidocfr = "
Affecter le graveur @code{Span_arpeggio_engraver} au contexte de la
portée (@code{Staff}) permet de distribuer un arpège sur plusieurs
voix@tie{}:

"
  doctitlefr = "Arpège distribué sur plusieurs voix"


  texidoc = "
An arpeggio can be drawn across notes in different voices on the same
staff if the @code{Span_arpeggio_engraver} is added to the @code{Staff}
context:

"
  doctitle = "Creating arpeggios across notes in different voices"
} % begin verbatim

\new Staff \with {
  \consists "Span_arpeggio_engraver"
}
\relative c' {
  \set Staff.connectArpeggios = ##t
  <<
    { <e' g>4\arpeggio <d f> <d f>2 }
    \\
    { <d, f>2\arpeggio <g b>2 }
  >>
}

