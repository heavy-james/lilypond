%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.4"

\header {
  lsrtags = "repeats, keyboards"

%% Translation of GIT committish: e98b2d804c2a136edfa28adc894bb584f676c884
  texidocfr = "
Dans la mesure où @code{\\repeat tremolo} requiert deux arguments
musicaux pour un trémolo d'accords, la note ou l'accord de la
portée opposée doît être encadré par des accolades et se voir adjoindre
la commande @code{\\change Staff}.

"
  doctitlefr = "Trémolo et changement de portée"


  texidoc = "
Since @code{\\repeat tremolo} expects exactly two musical arguments for
chord tremolos, the note or chord which changes staff within a
cross-staff tremolo should be placed inside curly braces together with
its @code{\\change Staff} command.

"
  doctitle = "Cross-staff tremolos"
} % begin verbatim

\new PianoStaff <<
  \new Staff = "up" \relative c'' {
    \key a \major
    \time 3/8
    s4.
  }
  \new Staff = "down" \relative c'' {
    \key a \major
    \time 3/8
    \voiceOne
    \repeat tremolo 6 {
      <a e'>32
      {
        \change Staff = "up"
        \voiceTwo
        <cis a' dis>32
      }
    }
  }
>>

