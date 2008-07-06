%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.11.51"

\header {
  lsrtags = "text, vocal-music, spacing"

  texidoc = "
This snippet shows how to bring the lyrics line closer to the staff.

"
  doctitle = "Adjusting lyrics vertical spacing"
} % begin verbatim
% Default layout:
<<
  \new Staff \new Voice = melody \relative c' {
    c4 d e f
    g4 f e d
    c1
  }
  \new Lyrics \lyricsto melody { aa aa aa aa aa aa aa aa aa }

% Reducing the minimum space below the staff and above the lyrics:
  \new Staff \with {
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 4)
  }
  \new Voice = melody \relative c' {
    c4 d e f
    g4 f e d
    c1
  }
  \new Lyrics \with {
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1.2 . 1)
  }
  \lyricsto melody { aa aa aa aa aa aa aa aa aa }
>>
