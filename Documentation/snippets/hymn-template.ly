%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.12.2"

\header {
  lsrtags = "vocal-music, template"

%% Translation of GIT committish: 59caa3adce63114ca7972d18f95d4aadc528ec3d
  texidoces = "
  Este fragmento de código muestra una forma de preparar un himno cuando
cada línea comienza con un compás parcial.  También muestra cómo
añadir los versos como texto independiente debajo de la música.

"

  doctitlees = "Plantilla para himnos"
%%    Translation of GIT committish: ab9e3136d78bfaf15cc6d77ed1975d252c3fe506

  texidocde = "
Dieses Beispiel zeigt eine Möglichkeit, eine Hymnusmelodie zu setzen, in
der jede Zeiel mit einem Auftakt beginnt und einem unvollständigen
Takt abschließt.  Es zeigt auch, wie man die Strophen als allein stehenden
Text unter die Noten hinzufügt.

"
  doctitlede = "Hymnus-Vorlage"


%% Translation of GIT committish: 26375d5016d8d180fc914bfd07cf76f4168f2e37

  texidocfr = "
Le code ci-dessous illustre la manière d'agencer un cantique liturgique
dans lequel chaque ligne débute et se termine par une mesure incomplète.
Vous noterez par ailleurs l'affichage des paroles indépendamment de la
musique.

"
  doctitlefr = "Modèle pour cantique"

  texidoc = "
This code shows one way of setting out a hymn tune when each line
starts and ends with a partial measure.  It also shows how to add the
verses as stand-alone text under the music.

"
  doctitle = "Hymn template"
} % begin verbatim

Timeline = {
  \time 4/4
  \tempo 4=96
  \partial 2
  s2 | s1 | s2 \breathe s2 | s1 | s2 \bar "||" \break
  s2 | s1 | s2 \breathe s2 | s1 | s2 \bar "||"
}

SopranoMusic = \relative g' {
  g4 g | g g g g | g g g g | g g g g | g2
  g4 g | g g g g | g g g g | g g g g | g2
}

AltoMusic = \relative c' {
  d4 d | d d d d | d d d d | d d d d | d2
  d4 d | d d d d | d d d d | d d d d | d2
}

TenorMusic = \relative a {
  b4 b | b b b b | b b b b | b b b b | b2
  b4 b | b b b b | b b b b | b b b b | b2
}

BassMusic =  \relative g {
  g4 g | g g g g | g g g g | g g g g | g2
  g4 g | g g g g | g g g g | g g g g | g2
}

global = {
 \key g \major
}

\score {  % Start score
  <<
    \new PianoStaff <<  % Start pianostaff
      \new Staff <<  % Start Staff = RH
        \global
        \clef "treble"
        \new Voice = "Soprano" <<  % Start Voice = "Soprano"
          \Timeline
          \voiceOne
          \SopranoMusic
        >>  % End Voice = "Soprano"
        \new Voice = "Alto" <<  % Start Voice = "Alto"
          \Timeline
          \voiceTwo
          \AltoMusic
        >>  % End Voice = "Alto"
      >>  % End Staff = RH
      \new Staff <<  % Start Staff = LH
        \global
        \clef "bass"
        \new Voice = "Tenor" <<  % Start Voice = "Tenor"
          \Timeline
          \voiceOne
          \TenorMusic
        >>  % End Voice = "Tenor"
        \new Voice = "Bass" <<  % Start Voice = "Bass"
          \Timeline
          \voiceTwo
          \BassMusic
        >>  % End Voice = "Bass"
      >>  % End Staff = LH
    >>  % End pianostaff
  >>
}  % End score

\markup {
  \fill-line {
    ""
    {
      \column {
        \left-align {
          "This is line one of the first verse"
          "This is line two of the same"
          "And here's line three of the first verse"
          "And the last line of the same"
        }
      }
    }
    ""
  }
}

\paper {  % Start paper block
  indent = 0     % don't indent first system
  line-width = 130   % shorten line length to suit music
}  % End paper block

